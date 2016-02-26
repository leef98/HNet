
   
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
 

