
timer++;


draw_sprite(SprMsgBox,-1,view_wview[0],view_hview[0]/0.625);


draw_text(view_wview[0]/1.08,view_hview[0]/0.86,"Anders"); 


if(timer > 1){

    if keyboard_check_pressed(vk_tab){
        //object_get_name(objAnders);
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
