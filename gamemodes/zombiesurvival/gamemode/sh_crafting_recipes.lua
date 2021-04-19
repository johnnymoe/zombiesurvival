AddCSLuaFile()

GM.Assemblies = {}

function InsertRecipeTbl(recipe)
	table.insert(GM.Assemblies, recipe)
end

--To create a new recipe, use below as a template:
--[[
	local 'itemname_recipe' = {
		["Name"] = "Fists",
		["Recipes"] = {
			["item_name_here"] = 1,
			["item_name_here_2"] = 1
			--NOTE: Recipes are not limited
		},
		
		["Desc"] = "A nice template description, would be nice to mention item requirements here",
		["Icon"] = "zombiesurvival/killicons/weapon_fists"
		["Weapon"] = "weapon_fists",
		["Result"] = "weapon_fists"
		["Reward"] = 1
	}

	InsertRecipeTbl(itemname_recipe)

--]]
--To understand how this works:
--Name: The name of the recipe
--Recipes: they should contain the requirements to craft it
--Desc: a description describing it, might wanna just include the requirements
--Icon: what it looks like in-game
--Weapon: the required weapon if any
--Result: The result when crafted
--Reward: how much does the owner receive from other players crafting items

local waraxe_recipe = {
	["Name"] = "'Waraxe' Handgun",
	["Recipes"] = {
		["comp_modbarrel"] = 1
	},
	["Desc"] = "REQUIRES: 1 Mod barrel, 1 Glock",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_waraxe2",
	["Weapon"] = "weapon_zs_glock3",
	["Result"] = "weapon_zs_waraxe",
	["Reward"] = 5
}

InsertRecipeTbl(waraxe_recipe)

local molotov_recipe = {
	["Name"] = "Molotov Cocktail",
	["Recipes"] = {
		["comp_propanecan"] = 1
	},
	["Desc"] = "REQUIRES: 1 Propane tank, 1 Glass bottle",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_molotov2",
	["Weapon"] = "weapon_zs_glassbottle",
	["Result"] = "weapon_zs_molotov",
	["Reward"] = 2
}

InsertRecipeTbl(molotov_recipe)

local manhacksaw_recipe = {
	["Name"] = "Manhack - Saw Attachment",
	["Recipes"] = {
		["comp_sawblade"] = 1
	},
	["Desc"] = "REQUIRES: 1 Sawblades, 1 Manhack",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_manhack_saw",
	["Weapon"] = "weapon_zs_manhack",
	["Result"] = "weapon_zs_manhack_saw",
	["Reward"] = 10
}
InsertRecipeTbl(manhacksaw_recipe)

local electrichammer_recipe = {
	["Name"] = "Electrohammer",
	["Recipes"] = {
		["comp_electrobattery"] = 1
	},
	["Desc"] = "REQUIRES: 1 Electrobattery, 1 Hammer",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_hammer2",
	["Weapon"] = "weapon_zs_hammer",
	["Result"] = "weapon_zs_electrohammer",
	["Reward"] = 5
}
InsertRecipeTbl(electrichammer_recipe)

local axehack_recipe = {
	["Name"] = "Sawhack",
	["Recipes"] = {
		["comp_sawblade"] = 1
	},
	["Desc"] = "REQUIRES: 1 Sawblade, 1 Axe",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_sawhack.png",
	["Weapon"] = "weapon_zs_axe",
	["Result"] = "weapon_zs_sawhack",
	["Reward"] = 5
}
InsertRecipeTbl(axehack_recipe)

local buststick_recipe = {
	["Name"] = "Bust-on-a-stick",
	["Recipes"] = {
		["comp_busthead"] = 1
	},
	["Desc"] = "REQUIRES: 1 Busthead, 1 Plank",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_bust2",
	["Weapon"] = "weapon_zs_plank",
	["Result"] = "weapon_zs_bust",
	["Reward"] = 10
}
InsertRecipeTbl(buststick_recipe)

local megamasher_recipe = {
	["Name"] = "Mega Masher",
	["Recipes"] = {
		["comp_propanecan"] = 1
	},
	["Desc"] = "REQUIRES: 1 Propane Tank, 1 Sledgehammer",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_megamasher2",
	["Weapon"] = "weapon_zs_sledgehammer",
	["Result"] = "weapon_zs_megamasher",
	["Reward"] = 15
}
InsertRecipeTbl(megamasher_recipe)

local novablaster_recipe = {
	["Name"] = "'Nova Blaster' Pulse Revolver",
	["Recipes"] = {
		["comp_basicecore"] = 1
	},
	["Desc"] = "REQUIRES: 1 Basic core, 1 Magnum revolver",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_novablaster2",
	["Weapon"] = "weapon_zs_magnum",
	["Result"] = "weapon_zs_novablaster",
	["Reward"] = 10
}
InsertRecipeTbl(novablaster_recipe)

local tithonus_recipe = {
	["Name"] = "'Tithonus' Charged Shotgun",
	["Recipes"] = {
		["comp_contaecore"] = 1
	},
	["Desc"] = "REQUIRES: 1 Contained energy core, 1 Oberon",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_tithonus2",
	["Weapon"] = "weapon_zs_oberon",
	["Result"] = "weapon_zs_tithonus",
	["Reward"] = 5
}
InsertRecipeTbl(tithonus_recipe)

local fracture_recipe = {
	["Name"] = "'Fracture' Shotgun",
	["Recipes"] = {
		["comp_pumpaction"] = 1
	},
	["Desc"] = "REQUIRES: 1 Pump action, 1 Sawed-Off",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_fracture2",
	["Weapon"] = "weapon_zs_sawedoff",
	["Result"] = "weapon_zs_fracture",
	["Reward"] = 10
}
InsertRecipeTbl(fracture_recipe)

local seditionist_recipe = {
	["Name"] = "'Seditionist' Handgun",
	["Recipes"] = {
		["comp_focusbarrel"] = 1
	},
	["Desc"] = "REQUIRES: 1 Focus Barrel, 1 Deagle",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_seditionist2",
	["Weapon"] = "weapon_zs_deagle",
	["Result"] = "weapon_zs_seditionist",
	["Reward"] = 5
}
InsertRecipeTbl(seditionist_recipe)

local blareduct_recipe = {
	["Name"] = "'Blareduct' Zip Gun",
	["Recipes"] = {
		["trinket_ammovestii"] = 1
	},
	["Desc"] = "REQUIRES: 1 Ammo vest, 1 Pipe",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_blareduct2",
	["Weapon"] = "weapon_zs_pipe",
	["Result"] = "weapon_zs_blareduct",
	["Reward"] = 5
}
InsertRecipeTbl(blareduct_recipe)

local cinderrod_recipe = {
	["Name"] = "'Cinderrod' Zip Gun",
	["Recipes"] = {
		["comp_propanecan"] = 1
	},
	["Desc"] = "REQUIRES: 1 Propane tank, 1 Blareduct",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_blareduct2",
	["Weapon"] = "weapon_zs_blareduct",
	["Result"] = "weapon_zs_cinderrod",
	["Reward"] = 5
}
InsertRecipeTbl(cinderrod_recipe)

local innervator_recipe = {
	["Name"] = "'Innervator' Voltgun",
	["Recipes"] = {
		["comp_electrobattery"] = 1
	},
	["Desc"] = "REQUIRES: 1 Electrobattery battery, 1 Jackhammer",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_innervator2",
	["Weapon"] = "weapon_zs_jackhammer",
	["Result"] = "weapon_zs_innervator",
	["Reward"] = 5
}
InsertRecipeTbl(innervator_recipe)

local hephaestus_recipe = {
	["Name"] = "'Hephaestus' Tau Cannon",
	["Recipes"] = {
		["comp_gaussframe"] = 1
	},
	["Desc"] = "REQUIRES: 1 Gauss frame, 1 Tithonus",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_heph",
	["Weapon"] = "weapon_zs_tithonus",
	["Result"] = "weapon_zs_hephaestus",
	["Reward"] = 5
}
InsertRecipeTbl(hephaestus_recipe)

local stabber_recipe = {
	["Name"] = "'Stabber' M1 Garand",
	["Recipes"] = {
		["comp_shortblade"] = 1
	},
	["Desc"] = "REQUIRES: 1 Short blade, 1 Annabelle",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_stabber",
	["Weapon"] = "weapon_zs_annabelle",
	["Result"] = "weapon_zs_stabber",
	["Reward"] = 5
}
InsertRecipeTbl(stabber_recipe)

local galestorm_recipe = {
	["Name"] = "'Gale Storm' SMG",
	["Recipes"] = {
		["comp_multibarrel"] = 1
	},
	["Desc"] = "REQUIRES: 1 Multi-Barrel, 1 Uzi",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_galestorm",
	["Weapon"] = "weapon_zs_uzi",
	["Result"] = "weapon_zs_galestorm",
	["Reward"] = 5
}
InsertRecipeTbl(galestorm_recipe)

local eminence_recipe = {
	["Name"] = "'Eminence' Particle Cannon",
	["Recipes"] = {
		["trinket_ammovestiii"] = 1
	},
	["Desc"] = "REQUIRES: 1 Ammo band, 1 Barrage",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_eminence",
	["Weapon"] = "weapon_zs_barrage",
	["Result"] = "weapon_zs_eminence",
	["Reward"] = 10
}
InsertRecipeTbl(eminence_recipe)

local gladiator_recipe = {
	["Name"] = "'Gladiator' Super Shotgun",
	["Recipes"] = {
		["trinket_ammovestiii"] = 1
	},
	["Desc"] = "REQUIRES: 1 Ammo band, 1 Sweeper shotgun",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_gladiator",
	["Weapon"] = "weapon_zs_sweepershotgun",
	["Result"] = "weapon_zs_gladiator",
	["Reward"] = 5
}
InsertRecipeTbl(gladiator_recipe)

local ripper_recipe = {
	["Name"] = "'Ripper' Discblade Launcher",
	["Recipes"] = {
		["comp_sawblade"] = 1
	},
	["Desc"] = "REQUIRES: 1 Sawblade, 1 Zeus",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_ripper",
	["Weapon"] = "weapon_zs_zeus",
	["Result"] = "weapon_zs_ripper",
	["Reward"] = 5
}
InsertRecipeTbl(ripper_recipe)

local avelyn_recipe = {
	["Name"] = "'Avelyn' Multi Crossbow",
	["Recipes"] = {
		["trinket_ammovestiii"] = 1
	},
	["Desc"] = "REQUIRES: 1 Ammo trinket, 1 Charon",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_avelyn",
	["Weapon"] = "weapon_zs_charon",
	["Result"] = "weapon_zs_avelyn",
	["Reward"] = 5
}
InsertRecipeTbl(avelyn_recipe)

local asmd_recipe = {
	["Name"] = "'ASMD' Shock Rifle",
	["Recipes"] = {
		["comp_precision"] = 1
	},
	["Desc"] = "REQUIRES: 1 Percision component, 1 Quasar",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_asmd",
	["Weapon"] = "weapon_zs_quasar",
	["Result"] = "weapon_zs_asmd",
	["Reward"] = 5
}
InsertRecipeTbl(asmd_recipe)

local enkindler_recipe = {
	["Name"] = "'Enkindler' Fire Mine Layer",
	["Recipes"] = {
		["comp_launcher"] = 1
	},
	["Desc"] = "REQUIRES: 1 Launcher component, 1 Cinder rod",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_enkindler.png",
	["Weapon"] = "weapon_zs_cinderrod",
	["Result"] = "weapon_zs_enkindler",
	["Reward"] = 5
}
InsertRecipeTbl(enkindler_recipe)

local proliferator_recipe = {
	["Name"] = "'Proliferator' SMG",
	["Recipes"] = {
		["comp_linearactuator"] = 1
	},
	["Desc"] = "REQUIRES: 1 Linear actuator, 1 Galestorm",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_proliferator.png",
	["Weapon"] = "weapon_zs_galestorm",
	["Result"] = "weapon_zs_proliferator",
	["Reward"] = 5
}
InsertRecipeTbl(proliferator_recipe)
--[[
-TODO, get trinkets to be taken away from player and rework crafting
local electromagnet_recipe = {
	["Recipes"] = {
		["comp_electrobattery"] = 1
	},
	["Trinket"] = "trinket_magnet",
	["Desc"] = "A magnet that draws items towards you\nREQUIRES: 1 Electrobattery battery, 1 Magnet trinket",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_trinket",
	["Result"] = "trinket_electromagnet"
}
InsertRecipeTbl(electromagnet_recipe)

local guideproj_recipe = {
	["Recipes"] = {
		["comp_cpuparts"] = 1
	},
	["Trinket"] = "trinket_targetingvisori",
	["Desc"] = "Guide your projectile... how?\nREQUIRES: 1 CPU part, 1 Targeting visor trinket",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_trinket",
	["Result"] = "trinket_projguide"
}
InsertRecipeTbl(guideproj_recipe)

local projwei_recipe = {
	["Recipes"] = {
		["comp_busthead"] = 1
	},
	["Trinket"] = "trinket_projguide",
	["Desc"] = "More bullet speed\nREQUIRES: 1 Busthead, 1 projectile guide trinket",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_trinket",
	["Result"] = "trinket_projwei"
}
InsertRecipeTbl(projwei_recipe)

local controlplat_recipe = {
	["Recipes"] = {
		["comp_cpuparts"] = 1
	},
	["Trinket"] = "trinket_mainsuite",
	["Desc"] = "Guide your what?\nREQUIRES: 1 CPU part, 1 Main suite trinket",
	["Icon"] = "zombiesurvival/killicons/weapon_zs_trinket",
	["Result"] = "trinket_controlplat"
}
InsertRecipeTbl(controlplat_recipe)
--]]