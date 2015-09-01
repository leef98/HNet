//Kollar abilityknapparna och höger/vänsterklick och sen utför 
//abilityn som är bindad till den knappen
//Tangentbord
switch (keyboard_key) {
    case ord('1'):
        //Kollar om det är rätt data för funktionen
        if (is_real(cAbility[? "ability1"])) {
            //Utför funktionen
            script_execute(cAbility[? "ability1"])
        }
    break;
    case ord('2'):
        //Kollar om det är rätt data för funktionen
        if (is_real(cAbility[? "ability2"])) {
            //Utför funktionen
            script_execute(cAbility[? "ability2"])
        }
    break;
    case ord('3'):
        //Kollar om det är rätt data för funktionen
        if (is_real(cAbility[? "ability3"])) {
            //Utför funktionen
            script_execute(cAbility[? "ability3"])
        }
    break;
    case ord('4'):
        //Kollar om det är rätt data för funktionen
        if (is_real(cAbility[? "ability4"])) {
            //Utför funktionen
            script_execute(cAbility[? "ability4"])
        }
    break;  
}
//Vänster och högerklick
switch (mouse_button) {
    case mb_left:
        //Kollar om det är rätt data för funktionen
        if (is_real(cAbility[? "lAbility"])) {
            //Utför funktionen
            script_execute(cAbility[? "lAbility"])
        }
    break;
    case mb_right:
        //Kollar om det är rätt data för funktionen
        if (is_real(cAbility[? "rAbility"])) {
            //Utför funktionen
            script_execute(cAbility[? "rAbility"])
        }
    break;
}