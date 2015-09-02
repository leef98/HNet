//Variabler
/*
Stats (Strength, Agility, Inteligence) - map
hp - int
mana - int
stamina
inventory - list
available abilities - map
current abilities - map (ability1, ability2, ability3, ability4, lAbility, rAbility)
*/
//Allokerar Current ability mapen
cAbility = ds_map_create()

//INGA PARANTESER HÄR
//Paranteser gör att det blir ett funktionsanrop, vi vill ha funktionen lagrad istället
cAbility[? "lAbility"] = abilitySwordStab
//Lägger till abilities på 1 och left button (test)

cAbility[? "ability1"] = createBullet
cAbility[? "ability2"] = createBullet

//Lägger till inventory som håller alla items (Inte equipade)
inventory = ds_list_create()

//Equipment (lWeapon, rWeapon, head, shoulder, chest, arms, gloves, pants, boots)
equipment = ds_map_create()


//Lägger till speed
cSpeed = 5
