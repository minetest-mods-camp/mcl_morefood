-- Mineclone 2 (5) MoreFood mod
-- by rudzik8
-- Licensed under Unlicense, more info here: <https://unlicense.org/>

local S = minetest.get_translator(minetest.get_current_modname())
local mofood_longdesc = S("This is a food item which can be eaten.")

minetest.register_craftitem("mcl_morefood:sandwich", {
	description = S("Sandwich"),
	_doc_items_longdesc = mofood_longdesc,
	inventory_image = "mcl_morefood_sandwich.png",
	groups = {food=2, eatable=14},
	_mcl_saturation = 10.5,
	on_place = minetest.item_eat(14),
	on_secondary_use = minetest.item_eat(14),
})
minetest.register_craftitem("mcl_morefood:chocolate_bar", {
	description = S("Chocolate Bar"),
	_doc_items_longdesc = mofood_longdesc,
	inventory_image = "mcl_morefood_chocolate_bar.png",
	groups = {food=2, eatable=6},
	_mcl_saturation = 4.0,
	on_place = minetest.item_eat(6),
	on_secondary_use = minetest.item_eat(6),
})
minetest.register_craftitem("mcl_morefood:fried_egg", {
	description = S("Fried Egg"),
	_doc_items_longdesc = mofood_longdesc,
	inventory_image = "mcl_morefood_fried_egg.png",
	groups = {food=2, eatable=8},
	_mcl_saturation = 10.0,
	on_place = minetest.item_eat(8),
	on_secondary_use = minetest.item_eat(8),
})
minetest.register_craftitem("mcl_morefood:cheese", {
	description = S("Cheese"),
	_doc_items_longdesc = mofood_longdesc,
	inventory_image = "mcl_morefood_cheese.png",
	groups = {food=2, eatable=9},
	_mcl_saturation = 8.6,
	on_place = minetest.item_eat(9),
	on_secondary_use = minetest.item_eat(9),
})
minetest.register_craftitem("mcl_morefood:sweet_berry_pie", {
	description = S("Sweet Berry Pie"),
	_doc_items_longdesc = S("A sweet berry pie is a tasty food item which can be eaten."),
	inventory_image = "mcl_morefood_sweet_berry_pie.png",
	groups = {food = 2, eatable = 6},
	_mcl_saturation = 3.6,
	on_place = minetest.item_eat(6),
	on_secondary_use = minetest.item_eat(6),
})

-- Crafts
minetest.register_craft({
	type = "shapeless",
	output = "mcl_morefood:sandwich",
	recipe = {"mcl_farming:bread", "mcl_mobitems:cooked_beef"},
})
minetest.register_craft({
	type = "shapeless",
	output = "mcl_morefood:sandwich",
	recipe = {"mcl_farming:bread", "mcl_mobitems:cooked_mutton"},
})
minetest.register_craft({
	type = "shapeless",
	output = "mcl_morefood:sandwich",
	recipe = {"mcl_farming:bread", "mcl_mobitems:cooked_chicken"},
})
minetest.register_craft({
	type = "shapeless",
	output = "mcl_morefood:sandwich",
	recipe = {"mcl_farming:bread", "mcl_mobitems:cooked_porkchop"},
})
minetest.register_craft({
	type = "shapeless",
	output = "mcl_morefood:sandwich",
	recipe = {"mcl_farming:bread", "mcl_mobitems:cooked_rabbit"},
})
minetest.register_craft({
	output = "mcl_morefood:chocolate_bar",
	recipe = {
		{"mcl_dye:brown", "mcl_core:sugar", "mcl_dye:brown"},
		{"mcl_dye:brown", "mcl_mobitems:milk_bucket", "mcl_dye:brown"},
	},
	replacements = {
		{"mcl_mobitems:milk_bucket", "mcl_buckets:bucket_empty"},
	},
})
minetest.register_craft({
	type = "shapeless",
	output = "mcl_morefood:sweet_berry_pie",
	recipe = {"mcl_farming:sweet_berry", "mcl_core:sugar", "mcl_throwing:egg"},
})
minetest.register_craft({
	type = "cooking",
	output = "mcl_morefood:fried_egg",
	recipe = "mcl_throwing:egg",
	cooktime = 10,
})
minetest.register_craft({
	type = "cooking",
	output = "mcl_morefood:cheese",
	recipe = "mcl_mobitems:milk_bucket",
	replacements = {
		{"mcl_mobitems:milk_bucket", "mcl_buckets:bucket_empty"},
	},
	cooktime = 12,
})
