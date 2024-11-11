CLASS.name = "Conscript Non-Commissioned Officer"
CLASS.description = "Conscript NCOs are the backbone of the Conscript forces."
CLASS.faction = FACTION_CONSCRIPT
CLASS.isDefault = false
CLASS_CNCO = CLASS.index

function CLASS:OnSpawn(client)
    --weapon
	client:Give("weapon_conscript_smg")
    client:Give("weapon_conscript_pistol")
end