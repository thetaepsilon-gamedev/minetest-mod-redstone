local tiles = { "default_stone.png^redstone_redstone_overlay.png" }
local orename = "redstone:stone_with_redstone"
local lumpname = "redstone:redstone_lump"

minetest.register_craftitem(lumpname, {
	description = "Redstone lump",
	inventory_image = "redstone_redstone_lump.png",
})

minetest.register_node(orename, {
	description="Redstone ore",
	tiles = tiles,
	groups = { cracky=1 },
	sounds = default.node_sound_stone_defaults(),
	drop = lumpname,
})

local b = 13
minetest.register_ore({
	ore_type	= "scatter",
	ore		= orename,
	wherein		= "default:stone",
	clust_scarcity	= b * b * b,
	clust_num_ores	= 7,
	clust_size	= 3,
	y_min		= -31000,
	y_max		= -64,
})


