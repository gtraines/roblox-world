local module = {}

function module.breadthFirst(entity, levelsRemaining, funcToRunOnEachEntity)
    -- @param [Instance] entity entity to start search
	-- @param [Number] levelsRemaining Levels of entities deep to continue searching
	-- @param [function] The function to run on each entity
	if (levelsRemaining <= 0 or entity == nil) then
		return
	end
	
	local entityChilds = entity:GetChildren()
	
	for idx, entitiesChild in pairs(entityChilds) do
		funcToRunOnEachEntity(entitiesChild)
		breadthFirst(entitiesChild, levelsRemaining - 1, funcToRunOnEachEntity)
    end
end

function module.itWorked(msg) 
	print(msg)
end
return module
