///MoveUp()
//Flyttar till rummet upåt
global.croomY -= 1;
if (global.croomY < 0) {
    global.croomY = ds_grid_height(global.rooms);
}
GotoRoom(global.rooms[# global.croomX, global.croomY]);
global.player.y = room_height;
