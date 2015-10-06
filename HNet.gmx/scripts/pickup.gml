///pickup()
//Lägger till itemet i players inventory
var item = self.item;
with (global.player) {
    ds_list_add(inventory, item);
}

instance_destroy();
