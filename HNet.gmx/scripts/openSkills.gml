if (global.skillsOpen == false) {

moveUi();
//Lägger till alla objekt för abilities
var bX = global.ui.x
var bY = global.ui.y

var inst = 0
global.uiSkills = ds_list_create()
//Y led
var iLeft;
with (global.skills) {
    iLeft = array_length_1d(arr);
    show_message(iLeft)
    for (var i = 0;i<ceil(iLeft/8);i++) {
        //x led
        var oY = -70+i*50;
        var lY = bY+oY;
        for (var j = 0;j<8 && j<iLeft;j++) {
            var lskill;
            lskill = arr[i*8+j];
            var oX = -100+j*50;
            var lX = bX+oX;
            var inst = instance_create(lX, lY ,objUiAbility);
            //Sätter offset
            with (inst) {
                sprite_index = lskill.sprite
                skill = lskill.skill
                offX = oX
                offY = oY
            }
            ds_list_add(global.uiSkills, inst);
        }
        iLeft -= 8;
        
    }
}
global.skillsOpen = true;
global.ui.sprite_index = uiSkillBackground;
global.ui.visible = true;
}else {
    global.skillsOpen = false
    global.ui.visible = false
    for (var i = 0; i<ds_list_size(global.uiSkills); i++) {
        with (global.uiSkills[|i]) {
            instance_destroy();
        }
    }
    ds_list_destroy(global.uiSkills);
}
