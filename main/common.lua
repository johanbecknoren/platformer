local M = {}

local player_tints = {}
player_tints[1] = vmath.vector4(1,0,0,1) -- red
player_tints[2] = vmath.vector4(0,1,0,1) -- green
player_tints[3] = vmath.vector4(0,0,1,1) -- blue
player_tints[4] = vmath.vector4(1,1,0,1) -- yellow

local cross_tints = {}
cross_tints[1] = vmath.vector4(1,0,0,1) -- red
cross_tints[2] = vmath.vector4(0,1,0,1) -- green
cross_tints[3] = vmath.vector4(0,0,1,1) -- blue
cross_tints[4] = vmath.vector4(1,1,0,1) -- yellow

M.player_tints = player_tints

M.cross_tints = cross_tints

M.weapons = {}
M.weapons[hash("m249")] = {
	name = "KSP-90",
	anim = "m249",
	scale = 0.5,
	bullets_per_second = 10,
	magazine_size = 2000,
	spread = 2,
	reload_time = 1.5,
	move_and_fire = true
}

M.weapons[hash("grenade")] = {
	name = "HE-grenade",
	anim = "grenade",
	scale = 0.5,
	bullets_per_second = 10,
	magazine_size = 1,
	spread = 0,
	reload_time = 1.5,
	move_and_fire = true
}

return M