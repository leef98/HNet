///Createbullet
//Om cooldownen har gått ut: skapa en bullet


if lCoolDown <= 0 {
    var inst;
    //Rikta mot musen
    var dir = point_direction(x, y, mouse_x, mouse_y);
    //Skapa den
    inst = instance_create(self.x, self.y, objSword);
    
    with (inst) {
        //Fixa variablerna för svärd
        direction = dir
        speed = 2
        image_angle = dir-135
        dmg = 10
        follow = false
        
  
    }
    //Fixa cooldown
    lCoolDown = 30
    
    

}

