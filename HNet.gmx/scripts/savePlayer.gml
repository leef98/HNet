with (global.player) {
    //Spara inventory
    ini_write_real('player', 'inventory', inventory)
    //Spara equipment
    ini_write_real('player', 'lWeapon', lWeapon)
    ini_write_real('player', 'rWeapon', rWeapon)
    ini_write_real('player', 'head', head)
    ini_write_real('player', 'shoulder', shoulder)
    ini_write_real('player', 'chest', chest)
    ini_write_real('player', 'arms', arms)
    ini_write_real('player', 'gloves', gloves)
    ini_write_real('player', 'pants', pants)
    ini_write_real('player', 'boots', boots)
    //Position
    ini_write_real('player', 'x', x)
    ini_write_real('player', 'y', y)
    //Spara stats
    ini_write_real('player', 'stats', stats)
    //Spara current abilities
    ini_write_real('player', 'cAbility', cAbility)
}
