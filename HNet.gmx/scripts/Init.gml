///Init()
global.items = instance_create(0, 0, treasureClass);
global.paused = false;
global.holdItemNo = -1
CreateItems();
randomize();
CreateDrop();
room_goto(rmRoom1);
