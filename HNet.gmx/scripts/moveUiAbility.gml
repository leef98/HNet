//Flyttar med den och offsettar baserat på var globala ui'n är
x = global.ui.x + offX;
y = global.ui.y + offY;
//offX offset X
//offY offset Y
if (sprite_index != -1) {
    if (visible) {
        draw_sprite(sprite_index, -1, (view_wview[0] + offX) - global.ui.sprite_width/2, (view_hview[0] + offY) - global.ui.sprite_height/2);
        //Ritar en gråmask för de skillsen som är disablade
        if (inactive) {
            draw_sprite(greyMask, 0,(view_wview[0] + offX) - global.ui.sprite_width/2, (view_hview[0] + offY) - global.ui.sprite_height/2); 
        }
    }
}
