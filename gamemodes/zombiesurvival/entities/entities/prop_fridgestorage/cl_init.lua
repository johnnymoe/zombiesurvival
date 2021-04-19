INC_CLIENT()

ENT.Dinged = true

function ENT:Initialize()
	self:SetRenderBounds(Vector(-72, -72, -72), Vector(72, 72, 128))
end

function ENT:SetObjectHealth(health)
	self:SetDTFloat(0, health)
end

local vOffset = Vector(25, 0, 0)
local vOffset2 = Vector(-7, 0, 0)
local aOffset = Angle(0, 90, 90)
local aOffset2 = Angle(0, 270, 90)
local vOffsetEE = Vector(-15, 0, 8)

function ENT:Think()
	if MySelf:IsValid() and MySelf:Team() == TEAM_HUMAN then
		local nextuse = MySelf.NextUseFood or 0
		if self.Dinged then
			if CurTime() < nextuse then
				self.Dinged = false
			end
		elseif CurTime() >= nextuse then
			self.Dinged = true

			self:EmitSound("zombiesurvival/ding.ogg")
		end
	end

	self:NextThink(CurTime() + 0.5)
	return true
end

function ENT:RenderInfo(pos, ang, owner)
	cam.Start3D2D(pos, ang, 0.075)
		draw.SimpleText(translate.Get("fridge_storage"), "ZS3D2DFont2", 0, -130, (MySelf.NextUseFood or 0) <= CurTime() and COLOR_GREEN or COLOR_DARKRED, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)

		local caches = MySelf.FridgeItems

		local timeremain = math.ceil(math.max(0, (MySelf.NextUseFood or 0) - CurTime()))
		if MySelf.NextUseFood then
			draw.SimpleText(timeremain > 0 and timeremain or translate.Get("ready"), "ZS3D2DFont2", 0, -60, (MySelf.NextUseFood or 0) <= CurTime() and COLOR_GREEN or COLOR_DARKRED, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
		if caches then
			local suffix = " stock Left"
			if caches > 1 then
				suffix = " stocks Left"
			else

			end
			draw.SimpleText(caches .. suffix, "ZS3D2DFont2Small", 0, 0, caches > 0 and COLOR_GREEN or COLOR_DARKRED, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)		end

		self:Draw3DHealthBar(math.Clamp(self:GetObjectHealth() / self:GetMaxObjectHealth(), 0, 1), nil, 190)

		if owner:IsValid() and owner:IsPlayer() then
			draw.SimpleText("("..owner:ClippedName()..")", "ZS3D2DFont2Small", 0, 30, owner == MySelf and COLOR_LBLUE or COLOR_GRAY, TEXT_ALIGN_CENTER)
		end
	cam.End3D2D()
end

function ENT:Draw()
	self:DrawModel()

	if not MySelf:IsValid() or MySelf:Team() ~= TEAM_HUMAN then return end

	local owner = self:GetObjectOwner()
	local ang = self:LocalToWorldAngles(aOffset)

	self:RenderInfo(self:LocalToWorld(vOffset), ang, owner)
	self:RenderInfo(self:LocalToWorld(vOffset2), self:LocalToWorldAngles(aOffset2), owner)
end

net.Receive("zs_nextfooduse", function(length)
	MySelf.NextUseFood = net.ReadFloat()
end)

net.Receive("zs_fridgeitems", function(length)
	MySelf.FridgeItems = net.ReadInt(8)
end)
