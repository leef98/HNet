///CreateDrop()
//Skapar och Initsierar DropTables
var inst = instance_create(0, 0, treasureClass);

with (inst) {
    items[0] = global.items.mittens1;
    items[1] = global.items.mittens2;
    items[2] = global.items.slippers1;
    items[3] = global.items.slippers2;
    items[4] = global.items.leggings1;
    items[5] = global.items.amice1;
    
    prob[0] = 20;
    prob[1] = 20;
    prob[2] = 20;
    prob[3] = 20;
    prob[4] = 10;
    prob[5] = 10
    vTest = 1;
    
}

global.bDrop = inst;
