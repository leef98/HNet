///CreateRooms()
//Ludvig
//Skapar alla rum i en grid
global.rooms = ds_grid_create(100, 100);
//Lägger till rum
//För att lägga till rum [xposition, yposition] = rumme
global.rooms[# 1, 1] = rmRoom1;
global.rooms[# 2, 1] = StartingZone;
//Lägger till nuvarande positionen
global.croomX = 1;
global.croomY = 1;
//Lägger till hanteringen av despawning av rum.
global.qRooms = ds_queue_create();

