///Createbullet
//Om cooldownen har gått ut: skapa en bullet
if cooldown[? argument0] <= 0 {
    var inst;
    //Rikta mot musen
    var dir = point_direction(x, y, mouse_x, mouse_y);
    //Skapa den
    inst = instance_create(self.x, self.y, objBullet);
    
    with (inst) {
        //Fixa variablerna för bulleten
        direction = dir
        speed = 10
        image_angle = dir
        dmg = 5
    }
    //Fixa cooldown
    cooldown[? argument0] = 30
}
