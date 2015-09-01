///Createbullet
if lCoolDown <= 0 {
    var inst;
    var dir = point_direction(x, y, mouse_x, mouse_y);
    
    inst = instance_create(self.x, self.y, objBullet);
    
    with (inst) {
        direction = dir
        speed = 10
        image_angle = dir
        dmg = 5
    }
    lCoolDown = 30
}