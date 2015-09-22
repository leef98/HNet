///Script för att testa saker
switch (keyboard_key) {
    case ord("5"):
        equipItemInventory(0)
    break;
    case ord("6"):
        save()
    break;
    case ord("8"):
        load()
    break;
    case ord("9"):
        equipItem(loadItem("gloves"))
    break;
}
