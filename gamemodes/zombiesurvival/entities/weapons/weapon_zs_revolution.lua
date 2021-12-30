AddCSLuaFile()

SWEP.Base = "weapon_zs_base"

SWEP.PrintName = "'Réabhlóid' Submachine Gun"
SWEP.Description = "local folklore says this weapon has been blessed with great damage on headshots. However,due to its age, it suffers from severe firing failure. Deals x7 damage to the head."

SWEP.HoldType = "ar2"
SWEP.ViewModelFOV = 64.530812186482
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/cstrike/c_rif_sg552.mdl"
SWEP.WorldModel = "models/weapons/w_rif_sg552.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = false
SWEP.UseHands = true

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(7.408, -19.704, -21.156) },
	["v_weapon.sg552_Parent"] = { scale = Vector(0.01, 0.01, 0.01), pos = Vector(2.6, -0.052, -0.72), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Clip"] = { scale = Vector(0.01, 0.01, 0.01), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Release"] = { scale = Vector(0.01, 0.01, 0.01), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Trigger"] = { scale = Vector(0.01, 0.01, 0.01), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.sg552_Chamber"] = { scale = Vector(0.01, 0.01, 0.01), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}


SWEP.Primary.Ammo = "smg1"
SWEP.Primary.ClipSize = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Sound = Sound("weapons/glock/glock18-1.wav")


SWEP.Primary.Delay = 0.1
SWEP.Primary.Damage = 7.3
SWEP.Primary.NumShots = 1

SWEP.ConeMin = 1
SWEP.ConeMax = 1

SWEP.Tier = 3
SWEP.Slot = 3

SWEP.IronSightsPos = Vector(-1.08, 0, 0.36)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.VElements = {
	["bareeeeeeeel"] = { type = "Model", model = "models/props_docks/dock01_pole01a_256.mdl", bone = "v_weapon.sg552_Parent", rel = "", pos = Vector(0.097, -6.736, -6.43), angle = Angle(180, 0, 0), size = Vector(0.07, 0.07, 0.057), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["bareeeeeeeelholdingthingaaa"] = { type = "Model", model = "models/props_c17/FurnitureDrawer003a.mdl", bone = "v_weapon.sg552_Parent", rel = "bareeeeeeeel", pos = Vector(-0.079, 0.768, 1.071), angle = Angle(180, 0, 0.477), size = Vector(0.124, 0.124, 0.193), color = Color(129, 123, 123, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["bareeeeeeeelholdingthingbelow"] = { type = "Model", model = "models/props_interiors/pot01a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeeeelholdingthingaaa", pos = Vector(-0.034, 0.502, -2.415), angle = Angle(90, 0, 90), size = Vector(0.073, 0.078, 0.152), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["bareeeeeeeelmuzzle"] = { type = "Model", model = "models/props_vehicles/apc_tire001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeeeel", pos = Vector(-0.062, 0, 7.478), angle = Angle(90, 0, 0), size = Vector(0.028, 0.021, 0.021), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["barrelcurva"] = { type = "Model", model = "models/mechanics/solid_steel/crossbeam_4.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeeeelholdingthingaaa", pos = Vector(-0.486, -0.037, -0.121), angle = Angle(-45, 90, 90), size = Vector(0.071, 0.071, 0.071), color = Color(76, 70, 70, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["barrelcurva2"] = { type = "Model", model = "", bone = "ValveBiped.Bip01_Spine4", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["barrelcurvaextended"] = { type = "Model", model = "models/hunter/plates/plate025x075.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeeeelholdingthingaaa", pos = Vector(-0.21, -0.019, -0.088), angle = Angle(180, 0, 90), size = Vector(0.107, 0.114, 0.209), color = Color(108, 108, 108, 255), surpresslightning = false, material = "phoenix_STORMS/fender_wood", skin = 0, bodygroup = {} },
	["body1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeeeel", pos = Vector(-0.04, 0.188, -3.987), angle = Angle(0, 0, 0), size = Vector(0.131, 0.131, 0.131), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["body2"] = { type = "Model", model = "models/hunter/blocks/cube025x1x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0.703, -0.739, -5.491), angle = Angle(0, 0, 90), size = Vector(0.121, 0.198, 0.121), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["body3"] = { type = "Model", model = "models/props_phx/misc/iron_beam1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(-0.717, 2.675, 1.339), angle = Angle(0, 90, 0), size = Vector(0.216, 0.158, 0.067), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["body4"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body3", pos = Vector(-0.291, -0.102, 1.92), angle = Angle(0, 180, 90), size = Vector(0.072, 0.033, 0.491), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["body5"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body4", pos = Vector(-5.188, -0.042, -0.714), angle = Angle(0, 90, 0), size = Vector(0.07, 0.098, 0.124), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["body5+"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body5", pos = Vector(-0.577, -0.003, -0.049), angle = Angle(0, 0, 0), size = Vector(0.07, 0.145, 0.124), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["boltarea"] = { type = "Model", model = "models/mechanics/solid_steel/crossbeam_4.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(-0.478, 0.468, 0.724), angle = Angle(135, 90, -90), size = Vector(0.065, 0.065, 0.095), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["boltarea2"] = { type = "Model", model = "models/hunter/blocks/cube025x1x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(-0.007, 6.224, 0.025), angle = Angle(0, 0, 0), size = Vector(0.119, 0.067, 0.119), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["boltback1"] = { type = "Model", model = "models/hunter/plates/plate025x1.mdl", bone = "v_weapon.sg552_Chamber", rel = "", pos = Vector(-0.408, -1.223, 6.812), angle = Angle(0, 90, 90), size = Vector(0.047, 0.075, 0.047), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["boltback2"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "boltback1", pos = Vector(-0.006, 1.164, -0.715), angle = Angle(0, 0, 0), size = Vector(0.011, 0.011, 0.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["clip"] = { type = "Model", model = "models/Items/ammocrate_ar2.mdl", bone = "v_weapon.sg552_Clip", rel = "", pos = Vector(0.162, 0.629, 3.693), angle = Angle(0, 0, 0), size = Vector(0.042, 0.153, 0.058), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["grip1"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body5", pos = Vector(0.499, 2.52, 0.743), angle = Angle(0, 0, 0), size = Vector(0.104, 0.137, 0.122), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["grip2"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "grip1", pos = Vector(0.546, 0.615, -0.018), angle = Angle(0, -90, 0), size = Vector(0.06, 0.049, 0.501), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["grip3"] = { type = "Model", model = "models/props_combine/breenbust.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "grip1", pos = Vector(0.405, 0.063, -0.166), angle = Angle(90, 131.744, 180), size = Vector(0.118, 0.118, 0.277), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["grip3+"] = { type = "Model", model = "models/props_combine/breenbust.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "grip1", pos = Vector(0.05, 0.344, 0.256), angle = Angle(-89.196, -48.747, 180), size = Vector(0.093, 0.119, 0.277), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["ironsight1"] = { type = "Model", model = "models/hunter/geometric/tri1x1eq.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(-0.01, 6.64, -0.239), angle = Angle(-11.044, -90, 90), size = Vector(0.084, 0.034, 0.059), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["ironsight1+"] = { type = "Model", model = "models/hunter/geometric/tri1x1eq.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(-1.249, 6.64, -0.239), angle = Angle(-11, -90, 90), size = Vector(0.084, 0.034, 0.059), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["ironsightfront"] = { type = "Model", model = "models/props_trainstation/trainstation_ornament001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeeeelmuzzle", pos = Vector(0, 0.276, 0), angle = Angle(90, 0, -90), size = Vector(0.015, 0.015, 0.018), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["kreis"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "boltback2", pos = Vector(0.006, 0.008, 0.558), angle = Angle(0, 0, 0), size = Vector(0.017, 0.017, 0.017), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["smallfix"] = { type = "Model", model = "models/hunter/plates/plate05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0.617, 0.044, -10.583), angle = Angle(-90, 0, 0), size = Vector(0.209, 0.061, 0.085), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["triggeritslef"] = { type = "Model", model = "models/Gibs/HGIBS_rib.mdl", bone = "v_weapon.sg552_Trigger", rel = "", pos = Vector(0.259, -0.852, 2.512), angle = Angle(90, 0, 0), size = Vector(0.096, 0.126, 0.096), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} },
	["triggerrahmen"] = { type = "Model", model = "models/hunter/misc/platehole1x1a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body5", pos = Vector(0.497, 0.863, 0.762), angle = Angle(0, 0, 0), size = Vector(0.026, 0.036, 0.493), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal6", skin = 0, bodygroup = {} }
}

function SWEP:EmitFireSound()
    self:EmitSound(self.Primary.Sound, 100, math.random(110,120))
	self:EmitSound("weapons/fiveseven/fiveseven-1.wav", 100, 200, 0.53, CHAN_AUTO+20)
     
end

SWEP.HeadshotMulti = 7

--Made by DuffT. Thanks to Supersp(o)oner and Johnny Moe