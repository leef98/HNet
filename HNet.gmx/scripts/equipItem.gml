///equipItem(item)
//e*Stat* blir den equipade statsen som adderas med b*Stat* och blir *Stat*
var item = argument0
//Kollar villken typ och assignar till den typen
with (global.player) {
    switch (item[? "type"]) {
        case "lWeapon":
            removeItem(lWeapon)
            lWeapon = item
        break;
        case "rWeapon":
            removeItem(rWeapon)
            rWeapon = item
        break;
        case "head":
            removeItem(head)
            head = item
        break;
        case "shoulder":
            removeItem(shoulder)
            shoulder = item
        break;
        case "chest":
            removeItem(chest)
            chest = item
        break;
        case "arms":
            removeItem(arms)
            arms = item
        break;
        case "gloves":
            removeItem(gloves)
            gloves = item
        break;
        case "pants":
            removeItem(pants)
            pants = item
        break;
        case "boots":
            removeItem(boots)
            boots = item
        break;
    }
    //Kollar om det finns agi på itemet och uppdaterar den
    if is_real(item[? "agi"]) {
        stats[? "eAgi"] += item[? "agi"]
    }
    //Kollar om det finns str på itemet och uppdaterar den
    if is_real(item[? "str"]) {
        stats[? "eStr"] += item[? "str"]
    }
    //Kollar om det finns int på itemet och uppdaterar den
    if is_real(item[? "int"]) {
        stats[? "eInt"] += item[? "int"]
    }
    //Kollar om det finns mana på itemet och uppdaterar den
    if is_real(item[? "mana"]) {
        stats[? "eMana"] += item[? "mana"]
    }
    //Kollar om det finns health på itemet och uppdaterar den
    if is_real(item[? "health"]) {
        stats[? "eHealth"] += item[? "health"]
    }
    //Kollar om det finns en funktion på itemet och kallar funktionen 
    if is_real(item[? "function"]) {
        script_execute(item[? "function"])
    }
    updateStats()
}
