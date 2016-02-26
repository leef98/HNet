if (global.skillsOpen == false) {

moveUi();
//Lägger till alla objekt för abilities
var bX = global.ui.x
var bY = global.ui.y

var inst = 0
global.uiSkills = ds_list_create()
//Y led
for (var i = 0;i<2;i++) {
    //x led
    var lY = bY+20+i*20;
    var oY = 20+i*20;
    for (var j = 0;j<9;j++) {
        var lX = bX+20+j*20;
        var oX = 20+j*20;
        inst = instance_create(lX, lY ,objUiAbility);
        //Sätter offset
        with (inst) {
            offX = oX
            offY = oY
        }
        ds_list_add(global.uiSkills, inst);
    }
}
global.uiSkills[|0].sprite_index = uiSword
global.skillsOpen = true;
//global.ui.sprite_index = uiSkillBackground;
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
