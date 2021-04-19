AddCSLuaFile()

GM.Cooking = {}

function InsertCookTbl(recipe)
	table.insert(GM.Cooking, recipe)
end

--To create a new recipe, use below as a template:
--[[
	local 'itemname_recipe' = {
		["Name"] = "Orange",
		["Recipes"] = {
			["item_name_here"] = 1,
			["item_name_here_2"] = 1,
		},
		
		["Desc"] = "A nice template description, would be nice to mention item requirements here",
		["Icon"] = "zombiesurvival/killicons/food",
		["Result"] = "weapon_zs_f_orange",
		["Reward"] = 1
	}

	InsertCookTbl(itemname_recipe)

--]]
--To understand how this works:
--Name: The name of the recipe
--Recipes: they should contain the requirements to craft it
--Desc: a description describing it, might wanna just include the requirements
--Icon: what it looks like in-game, should just be "zombiesurvival/killicons/food"
--Result: The result when cooked
--Reward: how much does the owner receive from other players crafting items

local smoothie_recipe = {
	["Name"] = "Fruit Smoothie",
	["Recipes"] = {
		["weapon_zs_f_banana"] = 1,
		["weapon_zs_f_milk"] = 1,
		["weapon_zs_f_orange"] = 1
	},
	
	["Desc"] = "REQUIRES: 1 Banana, 1 Milk, 1 Orange",
	["Icon"] = "zombiesurvival/killicons/food",
	["Result"] = "weapon_zs_f_c_smoothie",
	["Reward"] = 5
}

InsertCookTbl(smoothie_recipe)

