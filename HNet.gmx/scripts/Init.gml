///Init()
//Globala variabler
global.items = instance_create(0, 0, treasureClass);
global.ui = instance_create(0, 0, mainUi);
global.paused = false;
global.skillsOpen = false;
//Håller koll på vilka rum som behöver restartas
global.restartRoom = ds_map_create();
//Skapar items
CreateItems();
//Randomizar
randomize();
//Skapar Drop tables
CreateDrop();
//Skapar rummen i en grid
CreateRooms();

GotoRoom(rmRoom1);
