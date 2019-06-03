local module = {}

function module.breadthFirst(entity, levelsRemaining, funcToRunOnEachEntity)
    -- @param [Instance] entity The Parts to weld. Should be anchored to prevent really horrible results.
	-- @param [Number] levelsRemaining The part to weld the model to (can be in the model).
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

return module
