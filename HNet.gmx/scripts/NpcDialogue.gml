
timer++;


draw_sprite(SprMsgBox,-1,view_wview[0],view_hview[0]/0.625);


draw_text(view_wview[0]/10,view_hview[0]/0.75,"Fack u william"); 


if(timer > 1){

    if keyboard_check_pressed(vk_tab){
        
        instance_destroy();     
    }
    
}

/*
switch(argument0){

    case 2:
     show_message("meddelande 2");
        break;
    
    default:
   
    show_message("default");
    
        break;

}
