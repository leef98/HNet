//Flyttar med den och offsettar baserat på var globala ui'n är
x = global.ui.x + offX;
y = global.ui.y + offY;
//offX offset X
//offY offset Y
if (sprite_index != -1) {
    if (visible) {
        draw_sprite(sprite_index, -1, x, y);
        //Ritar en gråmask för de skillsen som är disablade
        if (inactive) {
            draw_sprite(greyMask, 0, x, y); 
        }
    }
}
