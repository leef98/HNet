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
//Allokerar Current ability mapen
cAbility = ds_map_create()


cAbility[? "lAbility"] = abilitySwordStab()
//Lägger till abilities på 1 och left button (test)

cAbility[? "ability1"] = createBullet()
cAbility[? "ability2"] = createBullet()


//Lägger till speed
cSpeed = 5
