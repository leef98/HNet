
//argument0, 1 = friendly, 2 = interactive
if (argument0 =1){

    //prata med NPC
    timer++;
    x=xstart + sin(timer*pi/45)*15;
    y=ystart + cos(timer*pi/45)*5;
  
}else if (argument0 >=2){
        
    if (distance_to_object(objMain)> maxDistance && bubble == false ){
     
        timer++;
        x=xstart + sin(timer*pi/45)*15;
        y=ystart + cos(timer*pi/45)*5;
        
        
        
    }else if (bubble == false){
   
        bubble = true;
        
        //pratbubbla?
            
        inst = instance_create(x+27, y, objMessage);
            
        with(inst){
         
            parent = other.id;
            bubbleSpeed = 1;
                
         }
            
   }else if bubble == true {
        //Om vi har en pratbubbla så ändrar vi positionen av pratbubblan, 
        //även startpositionen eftersom den används för 'wobblingen'
   
        with (inst) {
        
            xstart = other.x+27
            ystart = other.y
             x = xstart   
        }
   }

   if (!instance_exists(objMessage)){

        bubble = false;
        
   }
        
    if keyboard_check_pressed(vk_tab){
   
        if((mouse_x<xstart+mouseDistance)&&(mouse_x>xstart-mouseDistance)){
        
            if((mouse_y<ystart+mouseDistance)&&(mouse_y>ystart-mouseDistance)){
            
                //om musen är i närheten av NPC
                
                
                instance_create(view_xview[0]+view_wview[0]/2,view_yview[0]+view_hview[0],ObjMsgBox);
                
                //script_execute(NpcDialogue(argument0));
            }
        }
   }
   
}else{
//enemy npc
}





//argument1
//argument2
//argument3
//argument4
