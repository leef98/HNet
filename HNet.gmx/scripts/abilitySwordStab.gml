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
        image_angle = dir-135
        destroyOnRetract = false
        
        
        //stab attributes
        speed = 10
        dmg = 10
        follow = false 
        maxDistance = 25
        
    }
    //Fixa cooldown
    lCoolDown = 30
}
