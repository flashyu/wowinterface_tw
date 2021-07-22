﻿local KUI, T, E, L, V, P, G = unpack(select(2, ...))
local KUF = KUI:GetModule("KuiUnits")
local UF = E:GetModule("UnitFrames")

function KUF:Update_Raid40Frames(frame)
	local db = E.db.unitframe

	-- Only looks good on Transparent
	if db.colors.transparentHealth then
		if frame and frame.Health and not frame.isStyled then
			if E.db.KlixUI.unitframes.style then
			frame.Health:Styling(false, false, true)
			frame.isStyled = true
		end
	end
	end
end

function KUF:InitRaid40()
	if not E.db.unitframe.units.raid40.enable then return end
	hooksecurefunc(UF, "Update_Raid40Frames", KUF.Update_Raid40Frames)
end
