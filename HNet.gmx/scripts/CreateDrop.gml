///CreateDrop()
//Skapar och Initsierar DropTables
var inst = instance_create(0, 0, treasureClass);

with (inst) {
    items[0] = global.items.mittens1;
    items[0].sprite = sprGloves;
    items[1] = global.items.slippers1;
    items[1].sprite = sprShoes;
    items[2] = global.items.slippers2;
    items[2].sprite = sprShoes;
    items[3] = global.items.leggings1;
    items[3].sprite = sprsword;
    items[4] = global.items.amice1;
    items[4].sprite = sprChainmail;
    
    prob[0] = 20;
    prob[1] = 20;
    prob[2] = 20;
    prob[3] = 10;
    prob[4] = 10;
    vTest = 1;
    
}

global.bDrop = inst;
