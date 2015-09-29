///saveRoom()
//Ludvig
//Sparar rummet som man är i, med alla instances förutom player.
if (instance_number(objEnemy) <= 0) {
    show_message("Inga enemys");
    var count = instance_number(all);
    for (var i = 0; i < count; i++) {
        var inst = instance_find(all, i);
        saveInstance(inst);
        
    }
}
