///Init()
global.items = instance_create(0, 0, treasureClass);

CreateItems();
randomize();
CreateDrop();
room_goto(rmRoom1);
