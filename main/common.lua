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

return M