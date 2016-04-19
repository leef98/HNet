///Createbullet
//Om cooldownen har gått ut: skapa en bullet


if (rygga == false && global.player.stamina > 15){
    staminaCooldown();//Fixar cooldown på stamina
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
        speed = 5
        dmg = 10
        follow = false 
        maxDistance = 25
        dmgCooldown = false;
 
        
    }
    //Fixa cooldown
    cooldown[? argument0] = 30;
    global.player.stamina -= 15;
    if (global.player.stamina < 0) {global.player.stamina = 0}
    swordStabAnimation();
}
