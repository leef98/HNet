///Init()
//Globala variabler
global.items = instance_create(0, 0, treasureClass);
global.ui = instance_create(0, 0, mainUi);
global.paused = false;
global.skillsOpen = false;
//HÃ¥ller koll pÃ¥ vilka rum som behÃ¶ver restartas
global.restartRoom = ds_map_create();
//Börjar spela musik

global.afGroup = audio_create_sync_group(true);
audio_play_in_sync_group(global.afGroup, AshesToFire);
audio_play_in_sync_group(global.afGroup, AshesToFireLow);
audio_sound_gain(AshesToFireLow, 0, 0);
audio_start_sync_group(global.afGroup);

//audio_play_sound(Ashes_To_Fire, 1, true);
//audio_sound_gain(Ashes_To_Fire, 0.5, 0);

//Skapar items
CreateItems();
//Randomizar
randomize();
//Skapar Drop tables
CreateDrop();
//Skapar rummen i en grid
CreateRooms();
//Skapar alla skills
CreateSkills();

GotoRoom(rmRoom1);

//quest relaterade stuff
global.check = "false";
global.questAmount = "";
global.count = 0;
