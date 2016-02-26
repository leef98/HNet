///MoveLeft()
//Flyttar till rummet vänster
global.croomX -= 1;
if (global.croomX < 0) {
    global.croomX = ds_grid_width(global.rooms);
}
GotoRoom(global.rooms[# global.croomX, global.croomY]);
//Sätter positionen då man skall komma ut på andra sidan.
global.player.x = room_width;
