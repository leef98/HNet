///Script för att testa saker
switch (keyboard_key) {
    case ord("5"):
        //equipItemInventory(0)
        equipItem(global.items.mittens1);
    break;
    case ord("6"):
        save()
    break;
    case ord("8"):
        load()
    break;
    case ord("9"):
        pause()
    break;
    case ord("0"):
        unpause();
    break;
    case vk_home:
        if (audio_sound_get_gain(AshesToFire) < 1000) {
            audio_sound_gain(AshesToFire, 1000, 0)
        }else {
            UnmuteSound();
        }
    break;
}
