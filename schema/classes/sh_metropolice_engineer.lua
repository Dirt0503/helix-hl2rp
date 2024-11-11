CLASS.name = "Metropolice Engineer"
CLASS.description = "A metropolice unit trained to conduct technical maintenance."
CLASS.faction = FACTION_MPF
CLASS.isDefault = false

function CLASS:OnSpawn(client)
	client:Give("weapon_conscript_smg")
end

function CLASS:OnSet(client)
	client:Give("weapon_conscript_smg")
end

CLASS_MPE = CLASS.index