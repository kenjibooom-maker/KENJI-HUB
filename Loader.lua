-- KENJI HUB LOADER
-- Version 1.0.0

local VERSION = "1.0.0"

print("Loading KENJI HUB...")
print("Version: " .. VERSION)

local success, result = pcall(function()
    local source = game:HttpGet("URL_RAW_MAIN_LUA")
    loadstring(source)()
end)

if success then
    print("KENJI HUB loaded!")
else
    warn("KENJI HUB ERROR: " .. tostring(result))
end

