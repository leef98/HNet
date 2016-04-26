/*scriptet kollar om inventoryn är uppe.
Är inventoryn uppe så skapas en optionbox till objektet.*/

if (global.paused){exit;} //Exitar dÃ¥ spelet Ã¤r pausat

global.holdItemXArraySet = floor((mouse_x-view_xview-275)/27);
    
    global.holdItemYArraySet = floor((mouse_y-view_yview-268)/27);

if(mouse_check_button(mb_right)){
draw_rectangle(global.holdItemXArraySet, global.holdItemYArraySet, global.holdItemXArraySet + 100, global.holdItemYArraySet + 100, true);
}
