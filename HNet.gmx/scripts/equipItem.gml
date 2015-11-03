///equipItem(item)
//e*Stat* blir den equipade statsen som adderas med b*Stat* och blir *Stat*
var item = argument0
if (item == 0){exit;}
//Kollar villken typ och assignar till den typen
if (item.object_index == basItem) {
    with (global.player) {
        switch (item.type) {
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
            case "hands":
                removeItem(hands)
                hands = item
            break;
            case "legs":
                removeItem(legs)
                legs = item
            break;
            case "feet":
                removeItem(feet)
                feet = item
            break;
        }
        //Kollar om det finns agi på itemet och uppdaterar den
        if is_real(item.agi) {
            stats[? "eAgi"] += item.agi
        }
        //Kollar om det finns str på itemet och uppdaterar den
        if is_real(item.str) {
            stats[? "eStr"] += item.str
        }
        //Kollar om det finns int på itemet och uppdaterar den
        if is_real(item.int) {
            stats[? "eInt"] += item.int
        }
        //Kollar om det finns mana på itemet och uppdaterar den
        if is_real(item.spi) {
            stats[? "eMana"] += item.spi
        }
        //Kollar om det finns health på itemet och uppdaterar den
        if is_real(item.hp) {
            stats[? "eHealth"] += item.hp
        }
        updateStats()
    }
}
