
//Variabler
/*
Stats (Strength, Agility, Inteligence) - map
hp - int
mana - int
stamina
inventory - map
available abilities - map
current abilities - map (ability1, ability2, ability3, ability4, lAbility, rAbility)
*/
cAbility = ds_map_create()

cAbility[? "ability1"] = createBullet()
cAbility[? "lAbility"] = createBullet()

cSpeed = 5