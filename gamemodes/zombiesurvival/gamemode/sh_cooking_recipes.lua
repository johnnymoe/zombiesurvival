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

local cookedmeat_recipe = {
	["Name"] = "Cooked Meat",
	["Recipes"] = {
		["weapon_zs_f_rawmeat"] = 1
	},
	
	["Desc"] = "REQUIRES: 1 Raw Meat",
	["Icon"] = "zombiesurvival/killicons/food",
	["Result"] = "weapon_zs_f_c_meat",
	["Reward"] = 7
}

InsertCookTbl(cookedmeat_recipe)

local cookedtakeout_recipe = {
	["Name"] = "Cooked Chinese Takeout",
	["Recipes"] = {
		["weapon_zs_f_takeout"] = 1
	},
	
	["Desc"] = "REQUIRES: 1 Uncooked Chinese Takeout",
	["Icon"] = "zombiesurvival/killicons/food",
	["Result"] = "weapon_zs_f_c_takeout",
	["Reward"] = 4
}

InsertCookTbl(cookedtakeout_recipe)

local cheeseburger_recipe = {
	["Name"] = "Cheeseburger",
	["Recipes"] = {
		["weapon_zs_f_rawmeat"] = 1,
		["weapon_zs_f_slicecheese"] = 1,
		["weapon_zs_f_breadpiece"] = 1,
	},
	
	["Desc"] = "REQUIRES: 1 Piece of Bread, 1 Uncooked meat, 1 Slice of Cheese",
	["Icon"] = "zombiesurvival/killicons/food",
	["Result"] = "weapon_zs_f_c_cheeseburger",
	["Reward"] = 15
}

InsertCookTbl(cheeseburger_recipe)

local doublecheeseburger_recipe = {
	["Name"] = "Double Cheeseburger",
	["Recipes"] = {
		["weapon_zs_f_rawmeat"] = 1,
		["weapon_zs_f_slicecheese"] = 1,
		["weapon_zs_f_breadpiece"] = 1,
	},
	
	["Desc"] = "REQUIRES: 1 Cheeseburger, 1 Piece of Bread, 1 Uncooked meat, 1 Slice of Cheese",
	["Icon"] = "zombiesurvival/killicons/food",
	["Result"] = "weapon_zs_f_c_doublecheeseburger",
	["Reward"] = 35
}

InsertCookTbl(doublecheeseburger_recipe)

local baconeggs_recipe = {
	["Name"] = "Bacon and Eggs",
	["Recipes"] = {
		["weapon_zs_f_bacon"] = 1,
		["weapon_zs_f_egg"] = 1,
	},
	
	["Desc"] = "REQUIRES: 1 Bacon, 1 Egg",
	["Icon"] = "zombiesurvival/killicons/food",
	["Result"] = "weapon_zs_f_c_baconeggs",
	["Reward"] = 35
}

InsertCookTbl(baconeggs_recipe)

