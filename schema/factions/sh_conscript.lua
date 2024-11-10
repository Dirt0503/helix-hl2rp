

FACTION.name = "Conscripts"
FACTION.description = "Human soldiers forced to fight for the Universal Union."
FACTION.color = Color(5, 115, 10, 255)
FACTION.pay = 50
FACTION.models = {
	"models/humans/group17/female_01.mdl",
	"models/humans/group17/female_02.mdl",
	"models/humans/group17/female_03.mdl",
	"models/humans/group17/female_04.mdl",
	"models/humans/group17/female_06.mdl",
	"models/humans/group17/female_07.mdl",
	"models/humans/group17/male_01.mdl",
	"models/humans/group17/male_02.mdl",
	"models/humans/group17/male_03.mdl",
	"models/humans/group17/male_04.mdl",
	"models/humans/group17/male_05.mdl",
	"models/humans/group17/male_06.mdl",
	"models/humans/group17/male_07.mdl",
	"models/humans/group17/male_08.mdl",
	"models/humans/group17/male_09.mdl"
}
FACTION.isDefault = true
FACTION.isGloballyRecognized = true

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("suitcase", 1)
	inventory:Add("mid", 1, {
		name = character:GetName(),
		id = id
	})
end

function FACTION:OnNameChanged(client, oldValue, value)
	local character = client:GetCharacter()

	if (!Schema:IsConscriptRank(oldValue, "Rct.") and Schema:IsConscriptRank(value, "Rct.")) then
		character:JoinClass(CLASS_CRCT)
	elseif (!Schema:IsCombineRank(oldValue, "Pvt.") and Schema:IsCombineRank(value, "Pvt."))
    or  (!Schema:IsConscriptRank(oldValue, "Pfc.") and Schema:IsConscriptRank(value, "Pfc."))then
		character:JoinClass(CLASS_CRFL)
	elseif (!Schema:IsCombineRank(oldValue, "Cpl.") and Schema:IsCombineRank(value, "Cpl."))
    or  (!Schema:IsConscriptRank(oldValue, "Cpl.") and Schema:IsConscriptRank(value, "Cpl."))then
		character:JoinClass(CLASS_CNCO)
	elseif (!Schema:IsCombineRank(oldValue, "Lt.") and Schema:IsCombineRank(value, "Lt."))
		character:JoinClass(CLASS_COFF)
	end
end

FACTION_CONSCRIPT = FACTION.index