//Kollar abilityknapparna och höger/vänsterklick och sen utför 
//abilityn som är bindad till den knappen
//Tangentbord
if (global.paused){exit;}
if (rygga == false){
switch (keyboard_key) {
    case ord('1'):
        //Kollar om det är rätt data för funktionen
        if (is_real(cAbility[? "ability1"])) {
            if (cooldown[? "ability1"] <= 0) {
                //Utför funktionen
                script_execute(cAbility[? "ability1"], "ability1")
            }
        }
    break;
    case ord('2'):
        //Kollar om det är rätt data för funktionen
        if (is_real(cAbility[? "ability2"])) {
            if (cooldown[? "ability2"] <= 0) {
                //Utför funktionen
                script_execute(cAbility[? "ability2"], "ability2")
            }
        }
    break;
    case ord('3'):
        //Kollar om det är rätt data för funktionen
        if (is_real(cAbility[? "ability3"])) {
            if (cooldown[? "ability3"] <= 0) {
                //Utför funktionen
                script_execute(cAbility[? "ability3"], "ability3")
            }
        }
    break;
    case ord('4'):
        //Kollar om det är rätt data för funktionen
        if (is_real(cAbility[? "ability4"])) {
            if (cooldown[? "ability4"] <= 0) {
                //Utför funktionen
                script_execute(cAbility[? "ability4"], "ability4")
            }
        }
    break;  
}
//Vänster och högerklick
switch (mouse_button) {
    case mb_left:
        //Kollar om det är rätt data för funktionen
        if (is_real(cAbility[? "lAbility"])) {
            if (cooldown[? "lAbility"] <= 0) {
                //Utför funktionen
                script_execute(cAbility[? "lAbility"], "lAbility")
            }
        }
    break;
    case mb_right:
        //Kollar om det är rätt data för funktionen
        if (is_real(cAbility[? "rAbility"])) {
            if (cooldown[? "rAbility"] <= 0) {
                //Utför funktionen
                script_execute(cAbility[? "rAbility"], "rAbility")
            }
        }
    break;
}
}
