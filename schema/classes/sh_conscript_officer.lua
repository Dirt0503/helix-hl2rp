CLASS.name = "Conscript Officer"
CLASS.description = "A Commissioned Officer trusted by the Administration to lead a Conscript formation."
CLASS.faction = FACTION_CONSCRIPT
CLASS.isDefault = false
CLASS_COFF = CLASS.index

function CLASS:OnSpawn(client)
    -- weapon
	client:Give("weapon_357")

    --ammo
    client:Give("item_ammo_357")
    client:Give("item_ammo_357")
    client:Give("item_ammo_357")
    client:Give("item_ammo_357")
    client:Give("item_ammo_357")
    client:Give("item_ammo_357")
    
end