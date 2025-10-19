FILE_PATH = "C:/Dump/"
os.execute('mkdir "' .. FILE_PATH .. '"')

local START_TIME = os.time()
local GLOBALS_DUMPED = false
local CALL_STACK = {}
local UNIQUE_CALLS = {}
local UNIQUE_LOCALS = {}

local function serialize_value(v, max_len)
    max_len = max_len or 100
    local t = type(v)
    if t == "nil" then return "nil"
    elseif t == "boolean" then return tostring(v)
    elseif t == "number" then return tostring(v)
    elseif t == "string" then
        local s = tostring(v)
        if #s > max_len then s = s:sub(1, max_len) .. "..." end
        return s
    elseif t == "table" then return "table:" .. tostring(v):match("0x%x+") or "table"
    elseif t == "userdata" then return "userdata:" .. tostring(v):match("0x%x+") or "userdata"
    elseif t == "function" then return "function"
    else return tostring(v)
    end
end

local function dump_globals()
    local fname = FILE_PATH .. "globals_" .. START_TIME .. ".txt"
    local f = io.open(fname, "w")
    if not f then return end
    
    f:write("=== GAME GLOBALS ===\n\n")
    for k, v in pairs(_G) do
        local t = type(v)
        f:write(k .. " = " .. t)
        
        if t == "table" then
            local count = 0
            for _ in pairs(v) do count = count + 1 end
            f:write(" (" .. count .. " items)\n")
            
            for mk in pairs(v) do
                local mt = type(v[mk])
                f:write("  ." .. tostring(mk) .. " = " .. mt .. "\n")
            end
        else
            f:write("\n")
        end
    end
    f:write("\n=== END ===\n")
    f:close()
end

local function dump_trace_summary()
    local fname = FILE_PATH .. "trace_summary_" .. START_TIME .. ".txt"
    local f = io.open(fname, "w")
    if not f then return end
    
    f:write("=== UNIQUE FUNCTION CALLS ===\n\n")
    local sorted_calls = {}
    for call_name in pairs(UNIQUE_CALLS) do
        table.insert(sorted_calls, call_name)
    end
    table.sort(sorted_calls)
    
    for _, call_name in ipairs(sorted_calls) do
        f:write(call_name .. "\n")
    end
    
    f:write("\n=== UNIQUE LOCAL VARIABLES ===\n\n")
    local sorted_locals = {}
    for local_name in pairs(UNIQUE_LOCALS) do
        table.insert(sorted_locals, local_name)
    end
    table.sort(sorted_locals)
    
    for _, local_name in ipairs(sorted_locals) do
        f:write(local_name .. "\n")
    end
    
    f:write("\n=== TOTAL UNIQUE CALLS: " .. #sorted_calls .. " ===\n")
    f:write("=== TOTAL UNIQUE LOCALS: " .. #sorted_locals .. " ===\n")
    f:close()
end

local FILTERED_FUNCTIONS = {
    match = true, sub = true, find = true, lower = true, upper = true,
    format = true, gsub = true, byte = true, char = true, rep = true,
    len = true, gmatch = true, gfind = true, reverse = true
}

local function trace_hook(event, line)
    local info = debug.getinfo(2)
    if not info or not info.name or #info.name == 0 then return end
    if FILTERED_FUNCTIONS[info.name] then return end
    
    if not GLOBALS_DUMPED then
        dump_globals()
        GLOBALS_DUMPED = true
    end
    
    UNIQUE_CALLS[info.name] = true
    
    local fname = FILE_PATH .. "trace_" .. START_TIME .. ".txt"
    local f = io.open(fname, "a")
    if not f then return end
    
    if event == "call" then
        f:write("[CALL] " .. info.name .. "\n")
        
        local i = 1
        while true do
            local name, value = debug.getlocal(2, i)
            if not name then break end
            
            if not name:match("^%(") then
                UNIQUE_LOCALS[name] = true
                f:write("  " .. name .. " = " .. serialize_value(value) .. "\n")
            end
            i = i + 1
        end
        f:write("\n")
    end
    
    f:close()
end

debug.sethook(trace_hook, "c")

local function finalize()
    dump_trace_summary()
    print("[DUMPER] Trace complete!")
    print("[DUMPER] Files: globals_" .. START_TIME .. ".txt, trace_" .. START_TIME .. ".txt, trace_summary_" .. START_TIME .. ".txt")
end

print("[DUMPER] Started tracing. Output in: " .. FILE_PATH)

local cleanup_count = 0
local function periodic_check()
    cleanup_count = cleanup_count + 1
    if cleanup_count > 10000 then
        finalize()
        debug.sethook(nil)
    end
end

debug.sethook(function(event) periodic_check() end, "c")