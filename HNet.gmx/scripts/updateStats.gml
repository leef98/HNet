///updateStats()
with (global.player) {
    stats[? "agi"] = stats[? "bAgi"] + stats[? "eAgi"]
    stats[? "str"] = stats[? "bStr"] + stats[? "eStr"]
    stats[? "int"] = stats[? "bInt"] + stats[? "eInt"]
    cSpeed = stats[? "agi"] * 0.3
    mMana = stats[? "int"] * 10 + eMana
    mHealth = stats[? "str"] * 10 + eHealth
    mStamina = stats[? "agi"] * 10 + eStamina
    //TODO: Health
    updateModifiers()
}
