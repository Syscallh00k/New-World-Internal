FILE_PATH = "C:/Dump/"
os.execute('mkdir "' .. FILE_PATH .. '"')

local START_TIME = os.time()
local GLOBALS_DUMPED = false

local function get_address(v)
    local str = tostring(v)
    local addr = str:match("0x%x+")
    return addr or "unknown"
end

local function serialize_value(v, max_len)
    max_len = max_len or 100
    local t = type(v)
    if t == "nil" then return "nil"
    elseif t == "boolean" then return tostring(v)
    elseif t == "number" then return tostring(v)
    elseif t == "string" then
        local s = tostring(v)
        if #s > max_len then s = s:sub(1, max_len) .. "..." end
        return '"' .. s .. '"'
    elseif t == "table" then return "table[" .. get_address(v) .. "]"
    elseif t == "userdata" then return "userdata[" .. get_address(v) .. "]"
    elseif t == "function" then return "function[" .. get_address(v) .. "]"
    else return tostring(v)
    end
end

local function dump_globals()
    local fname = FILE_PATH .. "game_api_" .. START_TIME .. ".txt"
    local f = io.open(fname, "w")
    if not f then return end
    
    f:write("=== GAME API DUMP ===\n")
    f:write("Generated: " .. os.date() .. "\n\n")
    
    local sorted_keys = {}
    for k in pairs(_G) do
        table.insert(sorted_keys, k)
    end
    table.sort(sorted_keys)
    
    for _, k in ipairs(sorted_keys) do
        local v = _G[k]
        local t = type(v)
        local addr = get_address(v)
        
        f:write(k .. " @ " .. addr .. " = " .. t)
        
        if t == "table" then
            local count = 0
            for _ in pairs(v) do count = count + 1 end
            f:write(" (" .. count .. " items)\n")
            
            local sorted_subs = {}
            for mk in pairs(v) do
                table.insert(sorted_subs, mk)
            end
            table.sort(sorted_subs)
            
            for _, mk in ipairs(sorted_subs) do
                local mv = v[mk]
                local mt = type(mv)
                local maddr = get_address(mv)
                f:write("  ." .. tostring(mk) .. " @ " .. maddr .. " = " .. mt)
                
                if mt == "table" then
                    local subcount = 0
                    for _ in pairs(mv) do subcount = subcount + 1 end
                    f:write(" (" .. subcount .. " items)")
                end
                
                f:write("\n")
            end
        else
            f:write(" @ " .. addr .. "\n")
        end
        
        f:write("\n")
    end
    
    f:write("=== END ===\n")
    f:close()
end

local function dump_buses()
    local fname = FILE_PATH .. "buses_detailed_" .. START_TIME .. ".txt"
    local f = io.open(fname, "w")
    if not f then return end
    
    f:write("=== GAME BUSES ===\n\n")
    
    local bus_count = 0
    for k, v in pairs(_G) do
        if type(v) == "table" then
            if (v.Event and type(v.Event) == "table") or 
               (v.Broadcast and type(v.Broadcast) == "table") or
               (v.Connect and type(v.Connect) == "function") then
                bus_count = bus_count + 1
                
                f:write("BUS: " .. k .. " @ " .. get_address(v) .. "\n")
                
                if v.Broadcast and type(v.Broadcast) == "table" then
                    f:write("  .Broadcast @ " .. get_address(v.Broadcast) .. "\n")
                    for method in pairs(v.Broadcast) do
                        local maddr = get_address(v.Broadcast[method])
                        f:write("    ." .. tostring(method) .. " @ " .. maddr .. "\n")
                    end
                end
                
                if v.Event and type(v.Event) == "table" then
                    f:write("  .Event @ " .. get_address(v.Event) .. "\n")
                    for method in pairs(v.Event) do
                        local maddr = get_address(v.Event[method])
                        f:write("    ." .. tostring(method) .. " @ " .. maddr .. "\n")
                    end
                end
                
                if v.Connect and type(v.Connect) == "function" then
                    f:write("  .Connect @ " .. get_address(v.Connect) .. "\n")
                end
                
                if v.CreateHandler and type(v.CreateHandler) == "function" then
                    f:write("  .CreateHandler @ " .. get_address(v.CreateHandler) .. "\n")
                end
                
                f:write("\n")
            end
        end
    end
    
    f:write("=== TOTAL BUSES: " .. bus_count .. " ===\n")
    f:close()
end

local function dump_functions()
    local fname = FILE_PATH .. "functions_" .. START_TIME .. ".txt"
    local f = io.open(fname, "w")
    if not f then return end
    
    f:write("=== GAME FUNCTIONS ===\n\n")
    
    local func_count = 0
    local sorted_keys = {}
    for k in pairs(_G) do
        if type(_G[k]) == "function" then
            table.insert(sorted_keys, k)
            func_count = func_count + 1
        end
    end
    table.sort(sorted_keys)
    
    for _, k in ipairs(sorted_keys) do
        f:write(k .. " @ " .. get_address(_G[k]) .. "\n")
    end
    
    f:write("\n=== TOTAL FUNCTIONS: " .. func_count .. " ===\n")
    f:close()
end

if not GLOBALS_DUMPED then
    dump_globals()
    dump_buses()
    dump_functions()
    GLOBALS_DUMPED = true
    print("[DUMPER] Complete! Files in: " .. FILE_PATH)
    print("[DUMPER] - game_api_" .. START_TIME .. ".txt")
    print("[DUMPER] - buses_detailed_" .. START_TIME .. ".txt")
    print("[DUMPER] - functions_" .. START_TIME .. ".txt")
end