///removeItem(item)
//Removes equipment
var item = argument0
if (!is_undefined(item) && item.object_index == basItem) {
    with (global.player) {
        switch (item.type) {
            case "lWeapon":
                lWeapon = 0
            break;
            case "rWeapon":
                rWeapon = 0
            break;
            case "head":
                head = 0
            break;
            case "shoulder":
                shoulder = 0
            break;
            case "chest":
                chest = 0
            break;
            case "arms":
                arms = 0
            break;
            case "gloves":
                gloves = 0
            break;
            case "pants":
                pants = 0
            break;
            case "boots":
                boots = 0
            break;
        }
        
        //Kollar om det finns agi på itemet och uppdaterar den
        if is_real(item.agi) {
            stats[? "eAgi"] -= item.agi
        }
        //Kollar om det finns str på itemet och uppdaterar den
        if is_real(item.str) {
            stats[? "eStr"] -= item.str
        }
        //Kollar om det finns int på itemet och uppdaterar den
        if is_real(item.int) {
            stats[? "eInt"] -= item.int
        }
        //Kollar om det finns mana på itemet och uppdaterar den
        if is_real(item.spi) {
            stats[? "eMana"] -= item.spi
        }
        //Kollar om det finns health på itemet och uppdaterar den
        if is_real(item.health) {
            stats[? "eHealth"] -= item.health
        }
        updateStats()
    }
}
