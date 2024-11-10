

FACTION.name = "Conscripts"
FACTION.description = "Human soldiers forced to fight for the Universal Union."
FACTION.color = Color(5, 115, 10, 255)
FACTION.pay = 50
FACTION.models = 
{
	"models/jessev92/hl2/conscripts/f01_npccit.mdl",
	"models/jessev92/hl2/conscripts/f02_npccit.mdl",
	"models/jessev92/hl2/conscripts/f03_npccit.mdl",
	"models/jessev92/hl2/conscripts/f04_npccit.mdl",
	"models/jessev92/hl2/conscripts/f06_npccit.mdl",
	"models/jessev92/hl2/conscripts/f07_npccit.mdl",
	"models/jessev92/hl2/conscripts/m01_npccit.mdl",
	"models/jessev92/hl2/conscripts/m02_npccit.mdl",
	"models/jessev92/hl2/conscripts/m03_npccit.mdl",
	"models/jessev92/hl2/conscripts/m04_npccit.mdl",
	"models/jessev92/hl2/conscripts/m06_npccit.mdl",
	"models/jessev92/hl2/conscripts/m07_npccit.mdl",
	"models/jessev92/hl2/conscripts/m08_npccit.mdl",
	"models/jessev92/hl2/conscripts/m09_npccit.mdl",
	"models/jessev92/hl2/conscripts/m10_npccit.mdl",
	"models/jessev92/hl2/conscripts/m11_npccit.mdl"
}
FACTION.isDefault = true
FACTION.isGloballyRecognized = true

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("mid", 1, {
		name = character:GetName(),
		id = id
	})
end

function FACTION:OnNameChanged(client, oldValue, value)
	local character = client:GetCharacter()

	if (!Schema:IsConscriptRank(oldValue, "Rct.") and Schema:IsConscriptRank(value, "Rct.")) then
		character:JoinClass(CLASS_CRCT)

	elseif (!Schema:IsConscriptRank(oldValue, "Pvt.") and Schema:IsConscriptRank(value, "Pvt."))
    or  (!Schema:IsConscriptRank(oldValue, "Pfc.") and Schema:IsConscriptRank(value, "Pfc."))then
		character:JoinClass(CLASS_CRFL)

	elseif (!Schema:IsConscriptRank(oldValue, "Cpl.") and Schema:IsConscriptRank(value, "Cpl."))
    or  (!Schema:IsConscriptRank(oldValue, "Sgt.") and Schema:IsConscriptRank(value, "Sgt."))then
		character:JoinClass(CLASS_CNCO)

	elseif (!Schema:IsConscriptRank(oldValue, "Lt.") and Schema:IsConscriptRank(value, "Lt."))then
		character:JoinClass(CLASS_COFF)
	end
end

function FACTION:OnSpawn(client)
    local character = client:GetCharacter()
    local name = character:GetName()

    -- Match names starting with the rank prefixes and then followed by any non-digit characters
    if string.match(name, "^Pvt.%s*[%a]+$") or string.match(name, "^Pfc.%s*[%a]+$") then
        character:JoinClass(CLASS_CRFL)

    elseif string.match(name, "^Cpl.%s*[%a]+$") or string.match(name, "^Sgt.%s*[%a]+$") then
        character:JoinClass(CLASS_CNCO)

    elseif string.match(name, "^Lt.%s*[%a]+$") then
        character:JoinClass(CLASS_COFF)

    else
        return
    end
end

FACTION_CONSCRIPT = FACTION.index