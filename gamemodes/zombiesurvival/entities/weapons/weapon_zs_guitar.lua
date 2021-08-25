AddCSLuaFile()

SWEP.PrintName = "Guitar"
SWEP.Description = "A Guitar made of german quality. Of course it was never intended for bashing zombies,but in dire situations, it can do just that."

if CLIENT then
	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	
	SWEP.VElements = {
	["GuitarHeadTunerSeperate+"] = { type = "Model", model = "models/mechanics/solid_steel/type_a_3_4.mdl", bone = "ValveBiped.Bip01", rel = "GuitarHeadTunerSeperate", pos = Vector(-1.17, 1.121, 0), angle = Angle(0, -35.88, 0), size = Vector(0.056, 0.056, 0.056), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["BodyMiddleBlock++"] = { type = "Model", model = "models/hunter/triangles/1x1x2carved025.mdl", bone = "ValveBiped.Bip01", rel = "Body1", pos = Vector(10.692, -0.35, -0.033), angle = Angle(180, -45, 0), size = Vector(0.173, 0.173, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BodyMiddleBlock+"] = { type = "Model", model = "models/hunter/blocks/cube05x05x05.mdl", bone = "ValveBiped.Bip01", rel = "Body1", pos = Vector(13.272, -0.262, -0.102), angle = Angle(0, 0, 0), size = Vector(0.216, 0.488, 0.152), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["stringlongstick"] = { type = "Model", model = "models/hunter/plates/plate025x150.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.611, 1.654, -6.058), angle = Angle(1.998, -61.606, 92.418), size = Vector(0.247, 0.298, 0.458), color = Color(255, 163, 70, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["BodyMiddle"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01", rel = "Body1", pos = Vector(7.445, 9.435, -0.069), angle = Angle(0, -148.394, 0), size = Vector(0.216, 0.196, 1.154), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["stringAlte"] = { type = "Model", model = "models/hunter/plates/plate1.mdl", bone = "ValveBiped.Bip01", rel = "stringlongstick", pos = Vector(0.763, 7.296, 1.151), angle = Angle(0, 0, 0), size = Vector(0.061, 0.892, 0.178), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["Body1+"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "ValveBiped.Bip01", rel = "Body1", pos = Vector(2.526, 6.19, -0.053), angle = Angle(90, -180, 0), size = Vector(0.148, 0.032, 0.214), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["stringEine"] = { type = "Model", model = "models/hunter/plates/plate1.mdl", bone = "ValveBiped.Bip01", rel = "stringlongstick", pos = Vector(1.19, 7.243, 1.371), angle = Angle(0, 0, 0), size = Vector(0.061, 0.894, 0.105), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["BodyMiddleBlock"] = { type = "Model", model = "models/hunter/blocks/cube05x05x05.mdl", bone = "ValveBiped.Bip01", rel = "Body1", pos = Vector(2.54, -0.031, -0.113), angle = Angle(0, 0, 0), size = Vector(0.216, 0.458, 0.152), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["stringHaelt"] = { type = "Model", model = "models/hunter/plates/plate1.mdl", bone = "ValveBiped.Bip01", rel = "stringlongstick", pos = Vector(-0.625, 7.627, 1.529), angle = Angle(0, 0, 0), size = Vector(0.061, 0.875, 0.061), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["GuitarHeadTuner"] = { type = "Model", model = "models/props_junk/garbage_takeoutcarton001a.mdl", bone = "ValveBiped.Bip01", rel = "stringlongstick", pos = Vector(0, -12.997, -0.049), angle = Angle(0, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["Body1"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01", rel = "stringlongstick", pos = Vector(0, 14.262, -0.232), angle = Angle(-0.003, -90.639, 0), size = Vector(0.101, 0.146, 1.146), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BodyStringHalter"] = { type = "Model", model = "models/props_junk/cardboard_box002a.mdl", bone = "ValveBiped.Bip01", rel = "Body1", pos = Vector(14.272, -0.355, 1.613), angle = Angle(0, 0, 0), size = Vector(0.032, 0.135, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["BodyHoleXd"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01", rel = "Body1", pos = Vector(3.118, 0.008, 1.743), angle = Angle(0, 0, 0), size = Vector(0.061, 0.061, 0.061), color = Color(0, 0, 15, 255), surpresslightning = true, material = "metal3", skin = 0, bodygroup = {} },
	["BodyMiddle+"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01", rel = "BodyMiddle", pos = Vector(-10.41, 16.236, 0.09), angle = Angle(0, -155.092, 0), size = Vector(0.216, 0.202, 1.121), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["stringGitarre"] = { type = "Model", model = "models/hunter/plates/plate1.mdl", bone = "ValveBiped.Bip01", rel = "stringlongstick", pos = Vector(-0.138, 7.69, 1.508), angle = Angle(0, 0, 0), size = Vector(0.061, 0.875, 0.061), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["stringlongstick2"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Bip01", rel = "stringlongstick", pos = Vector(0, 12.27, 1.197), angle = Angle(0, 0, 0), size = Vector(0.237, 0.237, 0.237), color = Color(255, 163, 70, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["stringEwig"] = { type = "Model", model = "models/hunter/plates/plate1.mdl", bone = "ValveBiped.Bip01", rel = "stringlongstick", pos = Vector(-1.102, 7.729, 1.5), angle = Angle(0, 0, 0), size = Vector(0.061, 0.875, 0.065), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["GuitarHeadTunerSeperate"] = { type = "Model", model = "models/mechanics/solid_steel/type_a_3_4.mdl", bone = "ValveBiped.Bip01", rel = "GuitarHeadTuner", pos = Vector(0.657, 2.091, -0.403), angle = Angle(74.133, 0, -90), size = Vector(0.056, 0.056, 0.056), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["Body1++"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "ValveBiped.Bip01", rel = "Body1+", pos = Vector(0.009, 12.411, -0.014), angle = Angle(0, -180, 0), size = Vector(0.145, 0.032, 0.216), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BodyEnd"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01", rel = "Body1", pos = Vector(14.517, -0.246, -0.06), angle = Angle(0, -180, 0), size = Vector(0.16, 0.158, 1.12), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BodyMiddleBlock+++"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "ValveBiped.Bip01", rel = "Body1", pos = Vector(4.906, -0.033, -1.877), angle = Angle(0, 180, 0), size = Vector(0.118, 0.115, 1.172), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BodyMiddle++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2d.mdl", bone = "ValveBiped.Bip01", rel = "Body1++", pos = Vector(-0.109, 0.382, 12.017), angle = Angle(90, 0, 180), size = Vector(0.083, 0.039, 1.138), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["stringDeutsche"] = { type = "Model", model = "models/hunter/plates/plate1.mdl", bone = "ValveBiped.Bip01", rel = "stringlongstick", pos = Vector(0.317, 2.664, 1.506), angle = Angle(0, 0, 0), size = Vector(0.061, 1.087, 0.061), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["BodyMiddle+++"] = { type = "Model", model = "models/hunter/tubes/circle2x2d.mdl", bone = "ValveBiped.Bip01", rel = "Body1++", pos = Vector(0.027, 11.619, 12.178), angle = Angle(90, 0, 0), size = Vector(0.083, 0.039, 1.131), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["GuitarAccordDefinitio"] = { type = "Model", model = "models/props_phx/gears/rack18.mdl", bone = "ValveBiped.Bip01", rel = "stringlongstick", pos = Vector(0, 1.929, 0.082), angle = Angle(0, 0, 0), size = Vector(0.5, 0.319, 0.264), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

	

end



SWEP.Base = "weapon_zs_basemelee"

SWEP.ViewModel = "models/weapons/c_stunstick.mdl"
SWEP.WorldModel = "models/props/cs_militia/axe.mdl"
SWEP.UseHands = true

SWEP.HoldType = "melee"

SWEP.WElements = {
	["stringlongstick"] = { type = "Model", model = "models/hunter/plates/plate025x150.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.019, 1.46, -3.566), angle = Angle(0, 0, 83), size = Vector(0.247, 0.298, 0.458), color = Color(255, 163, 70, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["BodyMiddle"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Body1", pos = Vector(7.445, 9.435, -0.069), angle = Angle(0, -148.394, 0), size = Vector(0.216, 0.196, 1.154), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["stringAlte"] = { type = "Model", model = "models/hunter/plates/plate1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stringlongstick", pos = Vector(0.763, 7.296, 1.151), angle = Angle(0, 0, 0), size = Vector(0.061, 0.892, 0.178), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["stringEine"] = { type = "Model", model = "models/hunter/plates/plate1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stringlongstick", pos = Vector(1.19, 7.243, 1.371), angle = Angle(0, 0, 0), size = Vector(0.061, 0.894, 0.105), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["Body1+"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Body1", pos = Vector(2.526, 6.19, -0.053), angle = Angle(90, -180, 0), size = Vector(0.148, 0.032, 0.214), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["GuitarHeadTunerSeperate+"] = { type = "Model", model = "models/mechanics/solid_steel/type_a_3_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "GuitarHeadTunerSeperate", pos = Vector(-1.17, 1.121, 0), angle = Angle(0, -35.88, 0), size = Vector(0.056, 0.056, 0.056), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["BodyMiddle+++"] = { type = "Model", model = "models/hunter/tubes/circle2x2d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Body1++", pos = Vector(0.027, 11.619, 12.178), angle = Angle(90, 0, 0), size = Vector(0.083, 0.039, 1.131), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["stringHaelt"] = { type = "Model", model = "models/hunter/plates/plate1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stringlongstick", pos = Vector(-0.625, 7.627, 1.529), angle = Angle(0, 0, 0), size = Vector(0.061, 0.875, 0.061), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["stringDeutsche"] = { type = "Model", model = "models/hunter/plates/plate1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stringlongstick", pos = Vector(0.317, 2.664, 1.506), angle = Angle(0, 0, 0), size = Vector(0.061, 1.087, 0.061), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["Body1"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stringlongstick", pos = Vector(0, 14.262, -0.232), angle = Angle(-0.003, -90.639, 0), size = Vector(0.101, 0.146, 1.146), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BodyMiddle++++"] = { type = "Model", model = "models/hunter/tubes/circle2x2d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Body1++", pos = Vector(-0.109, 0.382, 12.017), angle = Angle(90, 0, 180), size = Vector(0.083, 0.039, 1.138), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BodyStringHalter"] = { type = "Model", model = "models/props_junk/cardboard_box002a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Body1", pos = Vector(14.272, -0.355, 1.613), angle = Angle(0, 0, 0), size = Vector(0.032, 0.135, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["BodyMiddle+"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BodyMiddle", pos = Vector(-10.41, 16.236, 0.09), angle = Angle(0, -155.092, 0), size = Vector(0.216, 0.202, 1.121), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["stringlongstick2"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stringlongstick", pos = Vector(0, 12.27, 1.197), angle = Angle(0, 0, 0), size = Vector(0.237, 0.237, 0.237), color = Color(255, 163, 70, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["BodyMiddleBlock+"] = { type = "Model", model = "models/hunter/blocks/cube05x05x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Body1", pos = Vector(13.272, -0.262, -0.102), angle = Angle(0, 0, 0), size = Vector(0.216, 0.488, 0.152), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["stringEwig"] = { type = "Model", model = "models/hunter/plates/plate1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stringlongstick", pos = Vector(-1.102, 7.729, 1.5), angle = Angle(0, 0, 0), size = Vector(0.061, 0.875, 0.065), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["stringGitarre"] = { type = "Model", model = "models/hunter/plates/plate1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stringlongstick", pos = Vector(-0.138, 7.69, 1.508), angle = Angle(0, 0, 0), size = Vector(0.061, 0.875, 0.061), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["GuitarHeadTunerSeperate"] = { type = "Model", model = "models/mechanics/solid_steel/type_a_3_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "GuitarHeadTuner", pos = Vector(0.657, 2.091, -0.403), angle = Angle(74.133, 0, -90), size = Vector(0.056, 0.056, 0.056), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["Body1++"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Body1+", pos = Vector(0.009, 12.411, -0.014), angle = Angle(0, -180, 0), size = Vector(0.145, 0.032, 0.216), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BodyEnd"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Body1", pos = Vector(14.517, -0.246, -0.06), angle = Angle(0, -180, 0), size = Vector(0.16, 0.158, 1.12), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BodyMiddleBlock+++"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Body1", pos = Vector(4.906, -0.033, -1.877), angle = Angle(0, 180, 0), size = Vector(0.118, 0.115, 1.172), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BodyMiddleBlock++"] = { type = "Model", model = "models/hunter/triangles/1x1x2carved025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Body1", pos = Vector(10.692, -0.35, -0.033), angle = Angle(180, -45, 0), size = Vector(0.173, 0.173, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BodyMiddleBlock"] = { type = "Model", model = "models/hunter/blocks/cube05x05x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Body1", pos = Vector(2.54, -0.031, -0.113), angle = Angle(0, 0, 0), size = Vector(0.216, 0.458, 0.152), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BodyHoleXd"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Body1", pos = Vector(3.118, 0.008, 1.743), angle = Angle(0, 0, 0), size = Vector(0.061, 0.061, 0.061), color = Color(0, 0, 15, 255), surpresslightning = true, material = "metal3", skin = 0, bodygroup = {} },
	["GuitarAccordDefinitio"] = { type = "Model", model = "models/props_phx/gears/rack18.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stringlongstick", pos = Vector(0, 1.929, 0.082), angle = Angle(0, 0, 0), size = Vector(0.5, 0.319, 0.264), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["GuitarHeadTuner"] = { type = "Model", model = "models/props_junk/garbage_takeoutcarton001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stringlongstick", pos = Vector(0, -12.997, -0.049), angle = Angle(0, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} }
}


SWEP.MeleeDamage = 230
SWEP.MeleeRange = 120
SWEP.MeleeSize = 3
SWEP.MeleeKnockBack = 300

SWEP.WalkSpeed = SPEED_SLOWEST

SWEP.SwingTime = 1.5
SWEP.SwingRotation = Angle(35,-20, -40)
SWEP.SwingOffset = Vector(10, 0, 0)
SWEP.SwingHoldType = "melee"

SWEP.HitDecal = "Manhackcut"

SWEP.AllowQualityWeapons = true

SWEP.Tier = 5

GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_MELEE_RANGE, 3)

SWEP.Sounds = {
	[1] = "ambient/materials/roust_crash2.wav"
}
function SWEP:PlaySwingSound()
	self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav", 75, math.random(30,70))
end

function SWEP:PlayHitSound()
	self:EmitSound(self.Sounds[math.random(1, #self.Sounds)])
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav")
end

//Made by DuffT. Thanks to SuperSpooner along with Johnny Moe