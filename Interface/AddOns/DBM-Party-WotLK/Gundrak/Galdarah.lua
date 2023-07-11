local mod	= DBM:NewMod(596, "DBM-Party-WotLK", 5, 274)
local L		= mod:GetLocalizedStrings()

if not mod:IsClassic() then
	mod.statTypes = "normal,heroic,timewalker"
end

mod:SetRevision("20230711080712")
mod:SetCreatureID(29306)
mod:SetEncounterID(1981)
mod:SetModelID(27061)
--
mod:RegisterCombat("combat")

--mod:RegisterEventsInCombat(
--)
