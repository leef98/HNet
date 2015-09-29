///CreateDrop()
//Skapar och Initsierar DropTables
var inst = instance_create(0, 0, treasureClass);

with (inst) {
    items[0] = global.items.gloves;
    items[1] = global.items.chainmail;
    
    prob[0] = 20;
    prob[1] = 80;
    vTest = 1;
    
}

global.bDrop = inst;
