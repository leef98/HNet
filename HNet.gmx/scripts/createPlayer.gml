//Inventory plats variabel
holdItemTemp = ds_list_create();
ryggaHoldPlats = ds_list_create();
holdItemXMin = ds_list_create();
holdItemXMax = ds_list_create();
holdItemYMin = ds_list_create();
holdItemYMax = ds_list_create();

//rygga variabel
rygga = false;
global.holdItemNo = -1;
global.downCount = 0;
global.countUp = -1;
//optionbox
ob = false
//Animations variabler
swordStab = false;
dialogOn = false;
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
cAbility[? "ability2"] = LightningStorm

//Lägger till inventory som håller alla items (Inte equipade)
inventory = ds_grid_create(4, 4);

//Equipment (lWeapon, rWeapon, head, shoulder, chest, hands, l  egs, feet)
lWeapon = 0
rWeapon = 0
head = 0
shoulder = 0
chest = 0
hands = 0
legs = 0
feet = 0
//Stats 3 sets av stats
//baseStats, equipStats, currentStats b*Stat* e*Stat* *Stat*
//Definition av stats
stats = ds_map_create()
stats[? "bAgi"] = 10
stats[? "bStr"] = 10
stats[? "bInt"] = 10
stats[? "eAgi"] = 0
stats[? "eStr"] = 0
stats[? "eInt"] = 0
stats[? "eMana"] = 0
stats[? "eHealth"] = 0
stats[? "agi"] = stats[? "bAgi"]
stats[? "str"] = stats[? "bStr"]
stats[? "int"] = stats[? "bInt"]
mMana = stats[? "int"] * 10
eMana = 0
eHealth = 0
eStamina = 0
mStamina = 100
mana = mMana
stamina = mStamina
sCooldown = 0
hp = 100
//Definition av stats
//Cooldown
cooldown = ds_map_create()
cooldown[? "ability1"] = 0
cooldown[? "ability2"] = 0
cooldown[? "ability3"] = 0
cooldown[? "ability4"] = 0
cooldown[? "lAbility"] = 0
cooldown[? "rAbility"] = 0
//Lägger till speed
bSpeed = 2
cSpeed = stats[? "agi"] * 0.3
//agi(Speed, AttackSpeed)
//str(Damage, Resistance)
//int(SpellDamage, ProjectileSpeed)
//Exempelitem (type, agi, str, int, spi, hp, sta, function)

global.player = id;
