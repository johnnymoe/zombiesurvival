local function AlertAchievement()
	local name = net.ReadString()
	local achTbl = net.ReadTable()
	
	LocalPlayer():ChatPrint("ACHIEVEMENT EARNED: " .. name)
end

net.Receive("ZS_EarnedAchievement", AlertAchievement)