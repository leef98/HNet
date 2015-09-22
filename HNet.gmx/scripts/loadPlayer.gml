with (global.player) {
    //Ladda inventory
    inventory = ini_read_real('player', 'inventory', 0)
    //Ladda equipment
    equipItem(ini_read_real('player', 'lWeapon', 0))
    equipItem(ini_read_real('player', 'rWeapon', 0))
    equipItem(ini_read_real('player', 'head', 0))
    equipItem(ini_read_real('player', 'shoulder', 0))
    equipItem(ini_read_real('player', 'chest', 0))
    equipItem(ini_read_real('player', 'arms', 0))
    equipItem(ini_read_real('player', 'gloves', 0))
    equipItem(ini_read_real('player', 'pants', 0))
    equipItem(ini_read_real('player', 'boots', 0))
    //Position
    x = ini_read_real('player', 'x', 0)
    y = ini_read_real('player', 'y', 0)
    //Ladda stats
    stats = ini_read_real('player', 'stats', 0)
    //Ladda current abilities
    cAbility = ini_read_real('player', 'cAbility', 0)
}
