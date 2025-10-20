FILE_PATH = "C:/Dump/"
os.execute('mkdir "' .. FILE_PATH .. '"')

local START_TIME = os.time()
local MAX_FILE_SIZE = 10 * 1024 * 1024
local current_size = 0
local file_count = 0

local function rotate_file()
    file_count = file_count + 1
    return FILE_PATH .. "game_api_" .. START_TIME .. "_" .. file_count .. ".txt"
end

local current_file = rotate_file()

local function write_safe(text)
    local f = io.open(current_file, "a")
    if not f then return end
    
    if current_size + #text > MAX_FILE_SIZE then
        f:close()
        current_file = rotate_file()
        current_size = 0
        f = io.open(current_file, "a")
    end
    
    f:write(text)
    current_size = current_size + #text
    f:close()
end

local function get_table_count(t)
    local count = 0
    for _ in pairs(t) do count = count + 1 end
    return count
end

local function dump_value(v)
    local t = type(v)
    if t == "table" then
        return "table"
    elseif t == "function" then
        return "function"
    elseif t == "userdata" then
        return "userdata"
    elseif t == "string" then
        return "string"
    elseif t == "number" then
        return "number"
    else
        return t
    end
end

local function dump_bus(name, bus_obj)
    if not bus_obj or type(bus_obj) ~= "table" then return end
    
    write_safe(string.format("%-50s [BUS]\n", name))
    
    local bus_methods = {}
    for mk in pairs(bus_obj) do
        table.insert(bus_methods, mk)
    end
    table.sort(bus_methods)
    
    for _, mk in ipairs(bus_methods) do
        local mt = dump_value(bus_obj[mk])
        write_safe(string.format("  %-48s %s\n", "." .. tostring(mk), mt))
    end
    write_safe("\n")
end

local function dump_table_deep(name, tbl, depth)
    depth = depth or 1
    if not tbl or type(tbl) ~= "table" then return end
    
    write_safe(string.format("%-50s [TABLE]\n", name))
    
    local keys = {}
    for k in pairs(tbl) do
        table.insert(keys, k)
    end
    table.sort(keys)
    
    for _, k in ipairs(keys) do
        local v = tbl[k]
        local t = type(v)
        
        if t == "table" then
            local count = get_table_count(v)
            write_safe(string.format("  %-48s table (%d items)\n", "." .. tostring(k), count))
            
            if depth < 2 and count > 0 and count < 30 then
                local sub_keys = {}
                for sk in pairs(v) do
                    table.insert(sub_keys, sk)
                end
                table.sort(sub_keys)
                
                for _, sk in ipairs(sub_keys) do
                    local sv = v[sk]
                    write_safe(string.format("    %-46s %s\n", "." .. tostring(sk), dump_value(sv)))
                end
            end
        else
            local val_str = tostring(v)
            if #val_str > 60 then val_str = val_str:sub(1, 60) .. "..." end
            write_safe(string.format("  %-48s %s = %s\n", "." .. tostring(k), t, val_str))
        end
    end
    write_safe("\n")
end

local function dump_slash_commands()
    if not g_slashCommands then return end
    
    write_safe("================================================================================\n")
    write_safe("SLASH COMMANDS\n")
    write_safe("================================================================================\n\n")
    
    for cmd_name in pairs(g_slashCommands) do
        write_safe(string.format("  /%s\n", cmd_name))
    end
    write_safe("\n")
end

local function dump_cached_scripts()
    if not g_cachedScripts then return end
    
    write_safe("================================================================================\n")
    write_safe("CACHED SCRIPTS (" .. get_table_count(g_cachedScripts) .. " total)\n")
    write_safe("================================================================================\n\n")
    
    local scripts = {}
    for k in pairs(g_cachedScripts) do
        table.insert(scripts, k)
    end
    table.sort(scripts)
    
    for _, script_name in ipairs(scripts) do
        local script_obj = g_cachedScripts[script_name]
        dump_table_deep(script_name, script_obj, 1)
    end
end

local function categorize_globals()
    local buses = {}
    local functions = {}
    local data = {}
    local other = {}
    
    for k, v in pairs(_G) do
        local t = type(v)
        if string.find(k, "Bus$") then
            table.insert(buses, {name = k, obj = v, type = t})
        elseif t == "function" then
            table.insert(functions, k)
        elseif string.find(k, "Data$") or string.find(k, "Data[%u]") then
            table.insert(data, {name = k, obj = v, type = t})
        else
            table.insert(other, {name = k, obj = v, type = t})
        end
    end
    
    return buses, functions, data, other
end

write_safe("================================================================================\n")
write_safe("GAME API COMPREHENSIVE DUMP - " .. os.date() .. "\n")
write_safe("================================================================================\n\n")

local buses, functions, data_tables, other = categorize_globals()

write_safe("================================================================================\n")
write_safe("BUSES (" .. #buses .. " total)\n")
write_safe("================================================================================\n\n")

table.sort(buses, function(a, b) return a.name < b.name end)
for _, bus in ipairs(buses) do
    dump_bus(bus.name, bus.obj)
end

write_safe("\n================================================================================\n")
write_safe("DATA TABLES (" .. #data_tables .. " total)\n")
write_safe("================================================================================\n\n")

table.sort(data_tables, function(a, b) return a.name < b.name end)
for _, data in ipairs(data_tables) do
    if type(data.obj) == "table" then
        local count = get_table_count(data.obj)
        write_safe(string.format("%-50s [TABLE] (%d items)\n", data.name, count))
    else
        write_safe(string.format("%-50s [%s]\n", data.name, string.upper(data.type)))
    end
end

write_safe("\n================================================================================\n")
write_safe("UTILITY FUNCTIONS (" .. #functions .. " total)\n")
write_safe("================================================================================\n\n")

table.sort(functions)
for _, fname in ipairs(functions) do
    write_safe(string.format("  %s()\n", fname))
end

write_safe("\n================================================================================\n")
write_safe("OTHER GLOBALS (" .. #other .. " total)\n")
write_safe("================================================================================\n\n")

table.sort(other, function(a, b) return a.name < b.name end)
for _, item in ipairs(other) do
    if type(item.obj) == "table" then
        local count = get_table_count(item.obj)
        write_safe(string.format("%-50s [TABLE] (%d items)\n", item.name, count))
        
        local sub_keys = {}
        for mk in pairs(item.obj) do
            table.insert(sub_keys, mk)
        end
        table.sort(sub_keys)
        
        for _, mk in ipairs(sub_keys) do
            local mt = dump_value(item.obj[mk])
            write_safe(string.format("  %-48s %s\n", "." .. tostring(mk), mt))
        end
        write_safe("\n")
    else
        write_safe(string.format("%-50s [%s]\n", item.name, string.upper(item.type)))
    end
end

dump_slash_commands()

dump_cached_scripts()

write_safe("\n================================================================================\n")
write_safe("STATISTICS\n")
write_safe("================================================================================\n\n")
write_safe(string.format("Total Buses:             %d\n", #buses))
write_safe(string.format("Total Functions:        %d\n", #functions))
write_safe(string.format("Total Data Tables:      %d\n", #data_tables))
write_safe(string.format("Total Other Globals:    %d\n", #other))
write_safe(string.format("Total Globals:          %d\n", #buses + #functions + #data_tables + #other))
if g_cachedScripts then
    write_safe(string.format("Total Cached Scripts:   %d\n", get_table_count(g_cachedScripts)))
end
write_safe(string.format("\nGenerated: %s\n", os.date("%Y-%m-%d %H:%M:%S")))

write_safe("\n================================================================================\n")
write_safe("END OF DUMP\n")
write_safe("================================================================================\n")

print("Enhanced dump complete!")
print("Output files:")
for i = 1, file_count do
    print(string.format("  - game_api_%d_%d.txt", START_TIME, i))
end