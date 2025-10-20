local FILE_PATH = "C:/Dump/"
os.execute('mkdir "' .. FILE_PATH .. '"')

local f = io.open(FILE_PATH .. "spawner_exploration.txt", "w")
if not f then return end

f:write("=== SPAWNER API EXPLORATION ===\n\n")

if not Spawner then
    f:write("ERROR: Spawner not found\n")
    f:close()
    return
end

f:write("Available methods on Spawner:\n")
for k, v in pairs(Spawner) do
    f:write("  ." .. tostring(k) .. " = " .. type(v) .. "\n")
end

f:write("\n=== TESTING METHODS ===\n\n")

local tests = {
    { name = "GetNumSpawning", func = function() return Spawner:GetNumSpawning() end },
    { name = "OnTopLevelEntitiesSpawned", func = function() return Spawner:OnTopLevelEntitiesSpawned() end },
}

for _, test in ipairs(tests) do
    local ok, result = pcall(test.func)
    if ok then
        f:write(test.name .. "() = " .. tostring(result) .. " (type: " .. type(result) .. ")\n")
    else
        f:write(test.name .. "() FAILED: " .. tostring(result) .. "\n")
    end
end

f:write("\n=== SPAWNER.SPAWNER ===\n\n")
if Spawner.Spawner then
    f:write("Type: " .. type(Spawner.Spawner) .. "\n")
    f:write("Contents:\n")
    for k, v in pairs(Spawner.Spawner) do
        f:write("  ." .. tostring(k) .. " = " .. type(v) .. "\n")
    end
end

f:write("\n=== END ===\n")
f:close()

local formatted = AddTextColorMarkup("Hello", "green")

print("Spawner exploration written to: " .. FILE_PATH .. "spawner_exploration.txt")