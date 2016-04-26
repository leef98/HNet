if (global.player.hp <= 0 && sprite_index != sprDead){
        image_index = 0;
        sprite_index = sprDead;
        image_speed = 0.2;
        global.paused = true;
}
if (global.player.hp <= 0 && image_index = 5 && sprite_index == sprDead) {
    audio_stop_sync_group(global.afGroup);
    image_speed = 0;
    global.paused = false;
    pause();
}
    
