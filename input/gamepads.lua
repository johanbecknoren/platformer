
local M = {}

function M.init_gamepad(gp)
	local gp = {}
	gp.stick_values = { stick_left = vmath.vector3(0, 0, 0),
	stick_right = vmath.vector3(0, 0, 0)}

	gp.pad_values = {right = { left = 0, right = 0, up = 0, down = 0},
	left = { left = 0, right = 0, up = 0, down = 0}}

	gp.trigger_values = {trigger_right = 0, trigger_left = 0}
	return gp
end

function M.on_input(self, action_id, action, gp)
	if (action_id == hash("GAMEPAD_LSTICK_LEFT")) then
		gp.stick_values.stick_left.x = -action.value
	elseif (action_id == hash("GAMEPAD_LSTICK_RIGHT")) then
		gp.stick_values.stick_left.x = action.value
	elseif (action_id == hash("GAMEPAD_LSTICK_UP")) then
		gp.stick_values.stick_left.y = action.value
	elseif (action_id == hash("GAMEPAD_LSTICK_DOWN")) then
		gp.stick_values.stick_left.y = -action.value
	end

	if (action_id == hash("GAMEPAD_RSTICK_LEFT")) then
		gp.stick_values.stick_right.x = -action.value
	elseif (action_id == hash("GAMEPAD_RSTICK_RIGHT")) then
		gp.stick_values.stick_right.x = action.value
	elseif (action_id == hash("GAMEPAD_RSTICK_UP")) then
		gp.stick_values.stick_right.y = action.value
	elseif (action_id == hash("GAMEPAD_RSTICK_DOWN")) then
		gp.stick_values.stick_right.y = -action.value
	end

	if action_id == hash("GAMEPAD_RPAD_LEFT") then--and action.pressed then--and is_jumping == false then
		gp.pad_values.right.left = action.value
	elseif action_id == hash("GAMEPAD_RPAD_RIGHT") then
		gp.pad_values.right.right = action.value
	elseif action_id == hash("GAMEPAD_RPAD_UP") then
		gp.pad_values.right.up = action.value
	elseif action_id == hash("GAMEPAD_RPAD_DOWN") then
		gp.pad_values.right.down = action.value
	end

	if action_id == hash("GAMEPAD_RTRIGGER") then
		gp.trigger_values.trigger_right = action.value
	elseif action_id == hash("GAMEPAD_LTRIGGER") then
		gp.trigger_values.trigger_left = action.value
	end
	return gp
end

return M