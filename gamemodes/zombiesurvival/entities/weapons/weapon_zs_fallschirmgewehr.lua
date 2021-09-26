AddCSLuaFile()
DEFINE_BASECLASS("weapon_zs_base")

SWEP.PrintName = "'Fallschirmgewehr' FG 42"
SWEP.Description = "Used by german Parachuters in the second world war, it still holds its status as a strong rifle today."

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Tier = 4
SWEP.MaxStock = 3

if CLIENT then
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 75
 SWEP.VElements = {
	["bodycircleblocker"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "Base", rel = "body1+", pos = Vector(0, 0.043, 0.175), angle = Angle(0, 0, 0), size = Vector(0.043, 0.043, 0.043), color = Color(255, 85, 0, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["woodenblockriffel"] = { type = "Model", model = "models/props_phx/gears/rack36.mdl", bone = "Base", rel = "body1", pos = Vector(4.256, -7.139, 1.134), angle = Angle(-90, 0, 0), size = Vector(0.372, 0.082, 0.025), color = Color(107, 67, 0, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["holeblocker"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "Base", rel = "body1+", pos = Vector(2.224, 0.157, 0.014), angle = Angle(0, 180, 0), size = Vector(0.041, 0.041, 0.041), color = Color(107, 78, 0, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["body1+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1c.mdl", bone = "Base", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(0.057, -0.343, -13.858), angle = Angle(0, -90, 0), size = Vector(0.092, 0.089, 0.293), color = Color(109, 67, 0, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["backironsight2"] = { type = "Model", model = "models/props_c17/SuitCase001a.mdl", bone = "Base", rel = "backironsight", pos = Vector(0, 0, 0.199), angle = Angle(0, 0, 180), size = Vector(0.028, 0.052, 0.25), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/pack2/black", skin = 0, bodygroup = {} },
	["body5maghole1+++"] = { type = "Model", model = "models/Items/item_item_crate_chunk02.mdl", bone = "Base", rel = "body5maghole1", pos = Vector(0, 0, -5.38), angle = Angle(0, 0, 0), size = Vector(0.414, 0.212, 1.08), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["bipod"] = { type = "Model", model = "models/props_wasteland/barricade001a.mdl", bone = "Base", rel = "mEtAlPoLEEEeee", pos = Vector(0, 5.143, 23.343), angle = Angle(-90, 90, 0), size = Vector(0.054, 0.256, 0.257), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["bareeeeeeeeeeeeeeeeeeelmuzzle"] = { type = "Model", model = "models/props_lab/jar01b.mdl", bone = "Base", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(0, 0.087, 25.365), angle = Angle(180, 0, 0), size = Vector(0.407, 0.407, 0.407), color = Color(0, 0, 0, 255), surpresslightning = true, material = "phoenix_storms/smallwheel_side", skin = 0, bodygroup = {} },
	["body5maghole1++"] = { type = "Model", model = "models/Items/item_item_crate_chunk02.mdl", bone = "Base", rel = "body5maghole1", pos = Vector(0, 0, -3.076), angle = Angle(0, 0, 0), size = Vector(0.414, 0.212, 2.457), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body2+"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "Base", rel = "body2", pos = Vector(-3.095, 0, 0), angle = Angle(0, 0, 0), size = Vector(1.004, 0.233, 0.233), color = Color(7, 7, 7, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["body2+++++"] = { type = "Model", model = "models/Gibs/wood_gib01b.mdl", bone = "Base", rel = "body2", pos = Vector(-3.095, 0, -2.013), angle = Angle(0, 0, 0), size = Vector(0.229, 0.179, 0.203), color = Color(7, 7, 7, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["body5maghole1"] = { type = "Model", model = "models/Items/item_item_crate_chunk02.mdl", bone = "Base", rel = "body5mag", pos = Vector(0.179, 0.172, 5.843), angle = Angle(0, 0, 0), size = Vector(0.414, 0.219, 0.947), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["mEtAlPoLEEEeee"] = { type = "Model", model = "models/props_c17/signpole001.mdl", bone = "Base", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(0.634, 1.355, -21.681), angle = Angle(0, 0, 0), size = Vector(0.356, 0.356, 0.237), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body1holes++"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "Base", rel = "body1holes", pos = Vector(-6.226, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body2grip3"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "Base", rel = "body2+", pos = Vector(-4.738, -1.045, 6.709), angle = Angle(25, 0, 90), size = Vector(0.061, 0.041, 0.037), color = Color(7, 7, 7, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["body2"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "Base", rel = "body1+++", pos = Vector(2.384, 0, -1.216), angle = Angle(90, 0, 0), size = Vector(0.316, 0.331, 0.316), color = Color(7, 7, 7, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["frontironsight"] = { type = "Model", model = "models/props_trainstation/trainstation_ornament001.mdl", bone = "Base", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(0.008, -0.129, 20.79), angle = Angle(0, 0, -90), size = Vector(0.039, 0.039, 0.059), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body1"] = { type = "Model", model = "models/phxtended/bar1x.mdl", bone = "Base", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(-2.142, -0.378, -13.886), angle = Angle(0, 0, 90), size = Vector(0.737, 0.293, 0.411), color = Color(109, 67, 0, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["body2++++++"] = { type = "Model", model = "models/props_junk/metal_paintcan001a.mdl", bone = "Base", rel = "body2", pos = Vector(-0.324, 0, 2.154), angle = Angle(-90, -180, 0), size = Vector(0.237, 0.237, 0.237), color = Color(7, 7, 7, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["rearstock1"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "Base", rel = "body2+", pos = Vector(-11.801, 0, 0.88), angle = Angle(0, 90, 90), size = Vector(0.059, 0.046, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/concrete3", skin = 0, bodygroup = {} },
	["body1holes+"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "Base", rel = "body1holes", pos = Vector(-3.023, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body2grip3+"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "Base", rel = "body2+", pos = Vector(-4.044, -1.596, 3.178), angle = Angle(0, 90, 0), size = Vector(0.184, 0.135, 0.203), color = Color(7, 7, 7, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["rearstock2"] = { type = "Model", model = "models/hunter/geometric/hex1x05.mdl", bone = "Base", rel = "rearstock1+", pos = Vector(-1.415, 0.201, -3.135), angle = Angle(0, -90, -90), size = Vector(0.109, 0.109, 0.93), color = Color(107, 67, 0, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["body1holes"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "Base", rel = "body1+", pos = Vector(-1.051, -1.185, 11.347), angle = Angle(90, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body4magholder"] = { type = "Model", model = "models/props_phx/construct/metal_tube.mdl", bone = "Base", rel = "body1", pos = Vector(5.403, 6.804, -0.285), angle = Angle(89.834, -83.118, 90), size = Vector(0.046, 0.166, 0.059), color = Color(15, 15, 15, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["body2grip2"] = { type = "Model", model = "models/mechanics/solid_steel/type_a_3_6.mdl", bone = "Base", rel = "body2grip1", pos = Vector(0.495, -0.627, 0.565), angle = Angle(-90, 0, 0), size = Vector(0.067, 0.067, 0.067), color = Color(7, 7, 7, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["body2++"] = { type = "Model", model = "models/hunter/tubes/tube4x4x2to2x2.mdl", bone = "Base", rel = "body2", pos = Vector(-2.781, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.018, 0.019, 0.018), color = Color(7, 7, 7, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["body5mag"] = { type = "Model", model = "models/Items/BoxSRounds.mdl", bone = "Base", rel = "body4magholder", pos = Vector(0.195, 3.615, -3.106), angle = Angle(0, 180, 90), size = Vector(0.321, 0.404, 0.575), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["triggerrahmen"] = { type = "Model", model = "models/hunter/misc/platehole1x1a.mdl", bone = "Base", rel = "body2+", pos = Vector(-0.533, -0.169, 4.313), angle = Angle(-90, 90, 0), size = Vector(0.048, 0.079, 0.488), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body2+++"] = { type = "Model", model = "models/hunter/plates/plate05x2.mdl", bone = "Base", rel = "body2", pos = Vector(-6.527, 0, -0.948), angle = Angle(0, 0, 0), size = Vector(0.657, 0.016, 0.657), color = Color(7, 7, 7, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["rearstock1+"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "Base", rel = "rearstock1", pos = Vector(0, 0, -7.901), angle = Angle(0, 0, 0), size = Vector(0.059, 0.046, 0.166), color = Color(123, 67, 0, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["bodycircleblocker+"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "Base", rel = "body1+", pos = Vector(0.081, 0.043, 13.803), angle = Angle(0, 0, 0), size = Vector(0.045, 0.045, 0.045), color = Color(255, 85, 73, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["body2grip1"] = { type = "Model", model = "models/props_c17/FurnitureDrawer003a.mdl", bone = "Base", rel = "body2+", pos = Vector(-1.422, 0, 2.598), angle = Angle(0, -90, 90), size = Vector(0.097, 0.103, 0.181), color = Color(7, 7, 7, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["body1holes+++"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "Base", rel = "body1holes", pos = Vector(-9.207, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body5maghole1+"] = { type = "Model", model = "models/Items/item_item_crate_chunk02.mdl", bone = "Base", rel = "body5maghole1", pos = Vector(0, 0.079, -1.142), angle = Angle(0, 0, 0), size = Vector(0.414, 0.212, 0.55), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["backironsight3"] = { type = "Model", model = "models/props_phx/wheels/magnetic_small.mdl", bone = "Base", rel = "backironsight2", pos = Vector(-0.166, -0.015, -2.77), angle = Angle(-90, 0, 0), size = Vector(0.043, 0.043, 0.079), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body1+++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1c.mdl", bone = "Base", rel = "body1+", pos = Vector(2.28, 0.045, -0.062), angle = Angle(0, 180, 0), size = Vector(0.092, 0.093, 0.293), color = Color(109, 67, 0, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["backironsight"] = { type = "Model", model = "models/props_c17/BriefCase001a.mdl", bone = "Base", rel = "", pos = Vector(-1.311, -1.737, -13.356), angle = Angle(90, 0, -90), size = Vector(0.071, 0.146, 0.071), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["bareeeeeeeeeeeeeeeeeeel"] = { type = "Model", model = "models/props_c17/signpole001.mdl", bone = "Base", rel = "", pos = Vector(-0.765, 1.444, 8.237), angle = Angle(-2.073, 0, 0), size = Vector(0.824, 0.824, 0.214), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body2++++"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "Base", rel = "body2", pos = Vector(-4.894, 0, 1.835), angle = Angle(0, 0, 0), size = Vector(0.515, 0.17, 0.17), color = Color(7, 7, 7, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} }
}
	
SWEP.ViewModelBoneMods = {
	["Base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(19.246, 1.383, -2.188), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(0.425, 0.043, -9.825), angle = Angle(0, 0, 0) }
}

end



SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "ar2"

SWEP.CSMuzzleFlashes = false


SWEP.ViewModel = "models/weapons/c_irifle.mdl"
SWEP.WorldModel = "models/weapons/w_irifle.mdl"
SWEP.UseHands = true

SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.ReloadSound = Sound("Weapon_SMG1.Reload")
SWEP.Primary.Sound = Sound("weapons/ar2/fire1.wav")
SWEP.Primary.Damage = 65
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.23

SWEP.Primary.ClipSize = 20
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "357"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.ConeMax = 9
SWEP.ConeMin = 0.3

SWEP.WalkSpeed = SPEED_SLOWEST

SWEP.IronSightsPos = Vector(-6.08, -10.889, 1.759)
SWEP.IronSightsAng = Vector(0.137, -1.734, -14.294)



SWEP.PointsMultiplier = GAMEMODE.PulsePointsMultiplier

SWEP.TracerName = "AR2Tracer"

SWEP.FireAnimSpeed = 0.4

SWEP.IronsightsMultiplier = 0.5

function SWEP:EmitFireSound()
    self:EmitSound(self.Primary.Sound, 100, math.random(70,80))
     
end

function SWEP:SendReloadAnimation()	
self:SendWeaponAnim(ACT_VM_DRAW)
end

local ghostlerp = 0
function SWEP:CalcViewModelView(vm, oldpos, oldang, pos, ang)
if self:GetOwner():GetBarricadeGhosting() or self:GetReloadFinish() > 0 then
ghostlerp = math.min(1, ghostlerp + FrameTime() * 0.3)
elseif ghostlerp > 0 then
ghostlerp = math.max(0, ghostlerp - FrameTime() * 0.7)
end

if ghostlerp > 0 then
ang:RotateAroundAxis(ang:Right(), -80 * ghostlerp)
end

return pos, ang
end

SWEP.ReloadSpeed = 0.3


//Made by DuffT. Thanks to Superspooner,Johnny Moe, and erdf 
//Thanks to Worm for the idea to recreate this gun


