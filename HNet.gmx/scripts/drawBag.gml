if (global.paused){exit;} //Exitar dÃ¥ spelet Ã¤r pausat

//BestÃ¤mmer lite mÃ¥tt
var xSlots = 4;
var ySlots = 4;

//Kollar variabeln
with (global.player) {

    //Variabler

    var holdItem = false, drawOnMouse = false;
    
    var global.holdItemXArraySet = floor((mouse_x-view_xview-275)/27);
    
    var global.holdItemYArraySet = floor((mouse_y-view_yview-268)/27);
    
    //var global.holdItemNo = -1;
    
    if (rygga == false){
        
        //rita ryggsÃ¤cken
        if keyboard_check_pressed(ord('I')){
            //StÃ¤ller om variabeln
            rygga = true;
            
        }
     }else {
        //ritar ryggan
        draw_sprite(sprBag, -1, view_xview+330, view_yview+330);
        for(var i=0; i < ySlots; i++){
        
            for(var j = 0; j < xSlots; j++){
            
                switch (mouse_button){
                
                        case mb_left:
                        
                        
                        
                            if (mouse_x >= view_xview+275+27*j && mouse_y >= view_yview+268+27*i && mouse_x <= view_xview+299+27*j && mouse_y <= view_yview+292+27*i && inventory[# j, i] != 0 && is_undefined(ryggaHoldPlats[| 0])){
                            
                                
                                global.holdItemNo = j + ySlots*i;
                                
                                global.holdX = j;
                                
                                global.holdY = i;                                
                                
                                ds_list_add(ryggaHoldPlats, inventory[# j, i]);
                            
                            }
                            else {
                            
                                
                            
                            }
                            
                        break;
                        
                        default:
                        
                            holdItem = false;
                        
                        break;
                    
                }
                    
            
                //Item: inventory[| j + ySlots*i]
                var plats = draw_rectangle(view_xview+275 + 27*j, view_yview+268 + 27*i, view_xview+299 + 27*j, view_yview+292 + 27*i, true);
                
                if(is_undefined(holdItemXMin[| j]) && is_undefined(holdItemXMax[| j])){
                
                    holdItemXMin[| j] = view_xview+275 + 27*j;
                    
                    holdItemXMax[| j] = view_xview+299 + 27*j;
                
                }
                
                
                
                if(!is_undefined(inventory[# j, i]) && global.holdItemNo != j+4*i && inventory[# j, i] != 0){
                    //Ritar itemwith(inventory[# j,i])
                    draw_sprite(inventory[# j, i].sprite, -1, view_xview+285 +27*j, view_yview+285 + 27*i);
                    //show_message(inventory[# j, i]);
                }
                else{
                
                
                
                }
                
            
            }
            
            if(is_undefined(holdItemYMin[| i]) && is_undefined(holdItemYMax[| i])){
                
                holdItemYMin[| i] = view_yview+268 + 27*i;
                
                holdItemYMax[| i] = view_yview+292 + 27*i;
                
            }
            
        }
        
        
        if (!is_undefined(ryggaHoldPlats[| 0]) && mouse_check_button(mb_left)){
        
            holdItem = true;
                                
            drawOnMouse = true;
        
            //ritar spriten
            draw_sprite_ext(ryggaHoldPlats[| 0].sprite, 0, mouse_x, mouse_y,1,1,0,c_white,0.7);
            
            
        
        }
        else{
            
            if (mouse_x >= holdItemXMin[| global.holdItemXArraySet] && mouse_y >= holdItemYMin[| global.holdItemYArraySet] && mouse_x <= holdItemXMax[| global.holdItemXArraySet] && mouse_y <= holdItemYMax[| global.holdItemYArraySet] && !is_undefined(inventory[# global.holdItemXArraySet, global.holdItemYArraySet]) && global.holdItemNo > -1){
            
                show_message(ryggaHoldPlats[| 0]);
                
                show_message(global.holdX);
                
                show_message(global.holdY);
                
                show_message(inventory[# global.holdX, global.holdY]);
                
                show_message(global.holdItemXArraySet);
                
                show_message(global.holdItemYArraySet);
                
                show_message(inventory[# global.holdItemXArraySet, global.holdItemYArraySet]);
                
                var localItem = inventory[# global.holdItemXArraySet, global.holdItemYArraySet];
                             
                ds_grid_set(inventory, global.holdX, global.holdY, localItem);
                
                ds_grid_set(inventory, global.holdItemXArraySet, global.holdItemYArraySet, RyggaHoldPlats[| 0]);
                
            }
            
            else{}
            
                if(!is_undefined(ryggaHoldPlats[| 0])){
                
                    show_message(ryggaHoldPlats[| 0]);
                
                }
            
                ds_list_clear(ryggaHoldPlats);
                
                ds_list_clear(holdItemTemp);
                
                holdItem = false;
                
                drawOnMouse = false;
            
                global.holdItemNo = -1;
                
                holdX = -1;
                
                holdY = -1;
        
        }
        if keyboard_check_pressed(ord('I')){
            //StÃ¤ller om variabeln
            rygga = false;
        }
    }
}
