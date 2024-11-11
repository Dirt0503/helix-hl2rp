CLASS.name = "Conscript Rifleman"
CLASS.description = "Your run-of-the-mill Conscript soldier."
CLASS.faction = FACTION_CONSCRIPT
CLASS.isDefault = false

function CLASS:OnSpawn(client)
	client:Give("weapon_conscript_smg")
end

CLASS_CRFL = CLASS.index