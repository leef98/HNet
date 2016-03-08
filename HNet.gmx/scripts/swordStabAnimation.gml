if (global.paused){exit;} //Exitar då spelet är pausat
var imgSpeed = cSpeed * 0.1;
image_speed = imgSpeed;

//Rikta mot musen
var dir = point_direction(x, y, mouse_x, mouse_y);
if (swordStab == false && rygga == false){
//Kollar om det är rätt funktion
if (is_real(cAbility[? "lAbility"])) {
    
    swordStab = true;
    
    if (dir >= 135 && dir <= 225){
        //Kollar spriten            
            image_index = 0;
            sprite_index = sprStabLeft;
            
    }
    else if (dir >= 45 && dir <= 135){
        //Kollar spriten
        image_index = 0;
            sprite_index = sprStabUp;
    }
    else if (dir >= 225 && dir <= 315){
        //Kollar spriten
        image_index = 0;
            sprite_index = sprStabDown;
    }
    else{
        //Kollar spriten
        image_index = 0;
            sprite_index = sprStabRight;
    }
    
    self.speed = 0;
    
}
}
