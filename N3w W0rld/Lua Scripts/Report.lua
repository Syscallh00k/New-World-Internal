FILE_PATH = "C:/Dumpz/"
os.execute('mkdir "' .. FILE_PATH .. '"')

local function log(msg)
    print("[Script] " .. msg)
    local f = io.open(FILE_PATH .. "script_log.txt", "a")
    if f then
        f:write(os.date("%H:%M:%S") .. " - " .. msg .. "\n")
        f:close()
    end
end

log("Script started")

if g_slashCommands and g_slashCommands.stuck then
    log("Found stuck command")
    
    local ok, result = pcall(function()
        if type(g_slashCommands.stuck) == "table" then
            for k, v in pairs(g_slashCommands.stuck) do
                log("  ." .. k .. " = " .. type(v))
            end
        end
    end)
end

if g_Logger then
    log("Testing logger")
    pcall(function()
        g_Logger:Log("Test message from injected script")
    end)
end

if UIInputRequestsBus and UIInputRequestsBus.Broadcast then
    log("UIInputRequestsBus available")
end

log("Script complete")