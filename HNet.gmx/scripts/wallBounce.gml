//Höger och vänster
if collision_point(x+sprite_width/2, y, objWall, 1,1) {//Höger
    hspeed = -hspeed
}else if collision_point(x-sprite_width/2, y, objWall, 1,1) {//Vänster
    hspeed = -hspeed
}else if collision_point(x,y-sprite_height/2, objWall,1,1) { //Upp
    vspeed = -vspeed
}else if collision_point(x,y+sprite_height/2, objWall,1,1) {//Ner
    vspeed = -vspeed
}





/*

If collision_point(x+sprite_width/2,y,obj_wall,1,1){ //if wall is to the right of object
//create portal
}
If collision_point(x,y-sprite_height/2,obj_wall,1,1){ //if wall is above the object
//create portal
}
If collision_point(x+sprite_width/2,y,obj_wall,1,1){ //if wall is to the left of object
//create portal
}
If collision_point(x,y-sprite_height/2,obj_wall,1,1){ //if wall is below the object
//create portal
}
*/
