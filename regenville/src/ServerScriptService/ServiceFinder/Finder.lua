

local ServerScriptService = game:GetService("ServerScriptService")

local allChildFolders = ServerScriptService:GetChildren()
local dedupedModules = {}

for _, folder in pairs(allChildFolders) do
    local registrationModuleScript = folder:FindFirstChild("_registerModules", false)
    if registrationModuleScript ~= nil then
        local registrationModule = require(registrationModuleScript)
        
        for key,mod in pairs(registrationModule) do
            if dedupedModules[key] == nil then
                dedupedModules[key] = mod
            end
        end
    end
end

local module = {}

module["RegisteredServices"] = deduplicatedModules

return module