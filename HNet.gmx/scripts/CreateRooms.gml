///CreateRooms()
//Ludvig
//Skapar alla rum i en grid
global.rooms = ds_grid_create(100, 100);
//Lägger till rum
//För att lägga till rum [xposition, yposition] = rummet
global.rooms[# 1, 1] = StartingZone;
global.rooms[# 2, 1] = rmRoom2;
global.rooms[# 2, 1] = room3;
global.rooms[# 3, 1] = room4;
global.rooms[# 4, 1] = room5;

//Lägger till nuvarande positionen
global.croomX = 1;
global.croomY = 1;
//Lägger till hanteringen av despawning av rum.
global.qRooms = ds_queue_create();

