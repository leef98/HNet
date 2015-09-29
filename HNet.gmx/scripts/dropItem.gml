///dropItem(item, x, y)
//Ludvig
//Skapar ett itemdrop vid en position och ett basItem instance
var lItem = argument0
//Kollar så att det är rätt typ
if (lItem.object_index == basItem) {
    //Skapar itemet
    var inst = instance_create(argument1, argument2, objItem)
    with (inst) {
        /*dmg = item.dmg;
        agi = item.agi;
        str = item.str;
        int = item.int;
        spi = item.spi;
        hp = item.hp;
        sta = item.sta;
        IFunction = item.IFunction;
        name = item.name;
        sprite = item.sprite;*/
        //Lägger till bas-itemet i en variabel
        item = lItem
        //Sätter spriten
        sprite_index = lItem.sprite;
    }
}
