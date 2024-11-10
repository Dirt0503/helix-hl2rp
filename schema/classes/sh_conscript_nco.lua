CLASS.name = "Conscript Non-Commissioned Officer"
CLASS.description = "Conscript NCOs are the backbone of the Conscript forces."
CLASS.faction = FACTION_CONSCRIPT
CLASS.isDefault = false
CLASS_CNCO = CLASS.index

function CLASS:OnSpawn(client)
    --weapon
	client:Give("weapon_smg1")
    client:Give("weapon_pistol")

    --ammo
    client:Give("item_ammo_smg1")
    client:Give("item_ammo_smg1")
    client:Give("item_ammo_smg1")
    client:Give("item_ammo_smg1")
    client:Give("item_ammo_smg1")
    client:Give("item_ammo_smg1")
    client:Give("item_ammo_pistol")
    client:Give("item_ammo_pistol")
    client:Give("item_ammo_pistol")
    client:Give("item_ammo_pistol")
end