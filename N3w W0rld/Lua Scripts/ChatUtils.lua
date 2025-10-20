if g_slashCommands and g_slashCommands.unstuck then
    local ok, result = pcall(function()
        -- Try calling the unstuck command
        if g_slashCommands.unstuck.Execute then
            return g_slashCommands.unstuck.Execute()
        elseif g_slashCommands.unstuck.Call then
            return g_slashCommands.unstuck.Call()
        else
            -- Try calling it directly
            return g_slashCommands.unstuck()
        end
    end)
    
    if ok then
        print("Unstuck command executed: " .. tostring(result))
    else
        print("Error: " .. tostring(result))
    end
end