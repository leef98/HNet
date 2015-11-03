///Init()
global.items = instance_create(0, 0, treasureClass);
global.paused = false;
CreateItems();
randomize();
CreateDrop();
room_goto(rmRoom1);
