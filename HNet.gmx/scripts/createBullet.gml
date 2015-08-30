///Createbullet
if lCoolDown <= 0 {
    var inst;
    inst = instance_create(self.x, self.y, objBullet);
    with (inst) {
        speed = 10
        direction = 90
        dmg = 5
    }
    lCoolDown = 30
}
