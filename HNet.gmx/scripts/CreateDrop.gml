///CreateDrop()
//Skapar och Initsierar DropTables
var inst = instance_create(0, 0, treasureClass);

with (inst) {
    items[0] = global.items.gloves;
    items[1] = global.items.chainmail;
    items[2] = global.items.cowl;
    items[3] = global.items.leatherpads;
    items[4] = global.items.shoes;
    items[5] = global.items.legplates;
    
    prob[0] = 20;
    prob[1] = 20;
    prob[2] = 20;
    prob[3] = 20;
    prob[4] = 10;
    prob[5] = 10
    vTest = 1;
    
}

global.bDrop = inst;
