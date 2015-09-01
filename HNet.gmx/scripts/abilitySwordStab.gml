///swing sword
//Om cooldownen har gått ut: swing
if lCoolDown <= 0 {
    var inst;
    //Rikta mot musen
    var dir = point_direction(x, y, mouse_x, mouse_y);
    //Skapa den
    inst = instance_create(self.x, self.y, objSword);
    
    with (inst) {
        //Fixa variablerna för stab
        direction = dir
        maxDistance = 10;
        speed = 15;
        image_angle = dir+45;
        dmg = 5;
        
     
        
        
        
    }
    //Fixa cooldown
    lCoolDown = 30
}
