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
}
