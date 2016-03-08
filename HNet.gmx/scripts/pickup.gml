///pickup()
//Lägger till itemet i players inventory
var item = self.item;
var i, j;
var xSlots = 4;
var ySlots = 4;
var inlagt = false;
with (global.player) {
    
    for(i = 0; i < ySlots; i++){
        for(j = 0; j < xSlots;j++){
            if(is_undefined(inventory[# j, i]) || inventory[# j, i] == 0){
                ds_grid_add(inventory, j, i, item);
                
                inlagt = true;
                
                break;
            }
            else{}
        }
        if(inlagt == true){break;}
    }
}

instance_destroy();
