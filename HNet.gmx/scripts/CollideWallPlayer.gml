//Gör så att man kan röra sig åt ett håll när man kolliderar med en vägg
/*if collision_point(x+sprite_width/2, y, objWall, 1,1) {//Höger
    hspeed = 0
}else if collision_point(x-sprite_width/2, y, objWall, 1,1) {//Vänster
    hspeed = 0
}else if collision_point(x,y-sprite_height/2, objWall,1,1) { //Upp
    vspeed = 0
}else if collision_point(x,y+sprite_height/2, objWall,1,1) {//Ner
    vspeed = 0
}*/
var inst = instance_place(x, y, objWall) 
if (inst != noone) {
    var lHspeed = hspeed;
    var lVspeed = vspeed;
    with (inst) {
        if collision_line(bbox_left, bbox_top, bbox_left, bbox_bottom, objPlayer, 1,1) {//Vänster
            lHspeed = 0
        }else if collision_line(bbox_right, bbox_top, bbox_right, bbox_bottom, objPlayer, 1,1) {//Höger
            lHspeed = 0
        }
        if collision_line(bbox_left, bbox_bottom, bbox_right, bbox_bottom, objPlayer,1,1) { //Ner
            lVspeed = 0
        }else if collision_line(bbox_left, bbox_top, bbox_right, bbox_top, objPlayer,1,1) {//Upp
            lVspeed = 0
        }
    }
    if (lHspeed = 0) {x = xprevious}
    if (lVspeed = 0) {y = yprevious}
    //hspeed = lHspeed
    //vspeed = lVspeed
}
