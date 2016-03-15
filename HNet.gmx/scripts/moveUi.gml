global.ui.x = view_xview[0]+view_wview[0]/2
global.ui.y = view_yview[0]+view_hview[0]/2
if (global.skillsOpen) {
    draw_sprite_ext(uiSkillBackground, -1, global.ui.x, global.ui.y, 0.8, 1, 0, c_white, 1);
    
}
