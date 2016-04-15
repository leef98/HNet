walkFrame++;
if (distance_to_object(objPlayer) > detectRange && follow = false) {
    if (walkFrame >= walkLength) {
        //if (speed = 0) {
            speed = 3
            direction = random(360)
            walkLength = 60
        //}else {
          //  speed = 0
            //walkLength = 0
        //}
        
        walkFrame = 0
    }else {
    
    }
}else {
    if (distance_to_object(objPlayer) <= detectRange) {
        if (follow = false) {
            follow = true;
        }
    }else if (distance_to_object(objPlayer) > followRange) {
        follow = false;
    }
    speed = 0;
    mp_potential_step_object(global.player.x, global.player.y, 3, objWall);
}
