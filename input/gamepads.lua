
local M = {}

function M.add_gamepad(owner_id, gamepad)
	--pprint("GAMEPAD MODULE add_gamepad:")
	--pprint(owner_id)
	--pprint(gamepad)
	M[owner_id] = gamepad
	--pprint(M[owner_id])
	--pprint("GAMEPAD MODULE add_gamepad END")
end

return M