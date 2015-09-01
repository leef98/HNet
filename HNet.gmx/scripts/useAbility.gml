switch (keyboard_key) {
    case ord('1'):
        script_execute(cAbility[? "ability1"])
    break;
    case ord('2'):
        script_execute(cAbility[? "ability2"])
    break;
    case ord('3'):
        script_execute(cAbility[? "ability3"])
    break;
    case ord('4'):
        script_execute(cAbility[? "ability4"])
    break;  
}
switch (mouse_button) {
    case mb_left:
        script_execute(cAbility[? "lAbility"])
    break;
    case mb_right:
        script_execute(cAbility[? "rAbility"])
    break;
}
