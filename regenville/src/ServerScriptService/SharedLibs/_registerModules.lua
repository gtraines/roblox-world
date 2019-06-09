local RoType = require(script.Parent:WaitForChild("rotype"))
local Linq = require(script.Parent:WaitForChild("linq"))
local RQuery = require(script.Parent:WaitForChild("rquery"))
local EzConfig = require(script.Parent:WaitForChild("easyconfig"))

local module = {}

module["RoType"] = RoType
module["Linq"] = Linq
module["RQuery"] = RQuery
module["EzConfig"] = EzConfig

return module
