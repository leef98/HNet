///DropFromTable(Droptable)
//Ludvig
//Slumpar fram ett drop från angiven droptable och eventuelt går in i andra droptables rekursivt

var drop = argument0;
//show_message(drop);
with (drop) {
    if (object_index == treasureClass) {
        var rNum = random(100)
        var cProb = 0;
        for (var i = 0; i < array_length_1d(items); i++) {
            cProb += prob[i];
            if (rNum <= cProb) {
                if (items[i].object_index == basItem) {
                    return items[i];
                }else if (items[i].object_index == treasureClass) {
                    return DropFromTable(items[i]);
                }
            }
        }
        return null
    }else {
        return null;
    }
}
