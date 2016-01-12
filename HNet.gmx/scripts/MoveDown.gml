///MoveDown()
//Flyttar till rummet neråt
global.croomY += 1;
if (global.croomY >= ds_grid_height(global.rooms)) {
    global.croomY = 0;
}
GotoRoom(global.rooms[# global.croomX, global.croomY]);
global.player.y = 0;
