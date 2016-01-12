///MoveRight()
//Flyttar till rummet höger
global.croomX += 1;
if (global.croomX >= ds_grid_width(global.rooms)) {
    global.croomX = 0;
}
GotoRoom(global.rooms[# global.croomX, global.croomY]);
show_debug_message(room_get_name(room));
global.player.x = 0;
