
//argument0, 1 = friendly, 2 = interactive

/*create:
    set variable bubble to false
    set variable maxDIstance to num
    set variable timer to 0
    set variable mouseDistance to 30
    set variable onOff to 0
*/


//object_is_ancestor problem

if (object_is_ancestor(self.object_index, basNpc)) { 

    var objName = object_get_name(object_index);
    
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
        
        
        
    }else if ((bubble == false)&& !instance_exists(ObjMsgBox)){
   
        bubble = true;
        
        //pratbubbla?
            
        inst = instance_create(x+11, y-16, objMessage);
            
        with(inst){
         
            parent = other.id;
            bubbleSpeed = 1;
                
         }
            
   }else if bubble == true {
        //Om vi har en pratbubbla så ändrar vi positionen av pratbubblan, 
        //även startpositionen eftersom den används för 'wobblingen'
   
        with (inst) {
        
            xstart = other.x+11
            ystart = other.y-16
             x = xstart   
             
        }
        
        if keyboard_check_pressed(vk_tab){
   
            if((mouse_x<object_index.x+mouseDistance)&&(mouse_x>object_index.x-mouseDistance)){
        
                if((mouse_y<object_index.y+mouseDistance)&&(mouse_y>object_index.y-mouseDistance)){
                
                    if(!instance_exists(ObjMsgBox)){
                
                        inst = instance_create(-99999999,-9999999,ObjMsgBox);
                        
                        with(inst){
                           name = objName;
                           dialogue = "start";
                        }
                    
                    }else{
                   
                    }
            
                }
            }
        }
   }

   if (!instance_exists(objMessage)){

        bubble = false;
        
   }
  
   
}else{
//enemy npc
}
}




//argument1
//argument2
//argument3
//argument4

