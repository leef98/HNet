
    maxDistance = 60;

    // sin(timer*pi/speed)*distans
    y = ystart + sin(timer*pi/30)*5;
    timer++;

    if (distance_to_object(objMain) > maxDistance ){
        
        instance_destroy();
         
    }