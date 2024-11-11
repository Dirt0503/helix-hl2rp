CLASS.name = "Conscript Officer"
CLASS.description = "A Commissioned Officer trusted by the Administration to lead a Conscript formation."
CLASS.faction = FACTION_CONSCRIPT
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    -- weapon
	client:Give("weapon_357")
end

CLASS_COFF = CLASS.index