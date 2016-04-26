if (global.paused){exit;} //Exitar då spelet är pausat
if cooldown[? "ability1"] > 0 { cooldown[? "ability1"] -= 1}
if cooldown[? "ability2"] > 0 { cooldown[? "ability2"] -= 1}
if cooldown[? "ability3"] > 0 { cooldown[? "ability3"] -= 1}
if cooldown[? "ability4"] > 0 { cooldown[? "ability4"] -= 1}
if cooldown[? "lAbility"] > 0 { cooldown[? "lAbility"] -= 1}
if cooldown[? "rAbility"] > 0 { cooldown[? "rAbility"] -= 1}
if sCooldown > 0 {sCooldown -=1}//Stamina cooldown
if (mana < mMana) {mana += 0.05}
