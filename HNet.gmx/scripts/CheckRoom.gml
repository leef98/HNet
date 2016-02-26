///CheckRoom()
//Kollar om roomet behöver restartas
if (!is_undefined(global.restartRoom[? room])) {
    if (global.restartRoom[? room] = true) {
        room_persistent = false;
        room_restart();
        global.restartRoom[? room] = false;
    }
}
