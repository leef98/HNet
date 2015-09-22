var imgSpeed = cSpeed * 0.1;
image_speed = imgSpeed;

//Rikta mot musen
var dir = point_direction(x, y, mouse_x, mouse_y);
if (swordStab == false){
//Kollar om det är rätt funktion
if (is_real(cAbility[? "lAbility"])) {
    
    swordStab = true;
    
    if (dir >= 135 && dir <= 225){
        //Kollar spriten            
            sprite_index = sprStabLeft;
            
    }
    else if (dir >= 45 && dir <= 135){
        //Kollar spriten
            sprite_index = sprStabUp;
    }
    else if (dir >= 225 && dir <= 315){
        //Kollar spriten
            sprite_index = sprStabDown;
    }
    else{
        //Kollar spriten
            sprite_index = sprStabRight;
    }
    
    self.speed = 0;
    
}
}
