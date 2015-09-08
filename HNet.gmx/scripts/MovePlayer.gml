//local speed
var lSpeed = cSpeed;
//animation speed
//Sprint
if keyboard_check(vk_shift){
    lSpeed = cSpeed*2;
} else{
    lSpeed = cSpeed;
}
var imgSpeed = lSpeed * 0.1;
image_speed = imgSpeed;
///MovePlayer()
var cVDir = self.direction;
//Flytta vänster och up/ner
if keyboard_check(ord('A')) {
    self.speed = lSpeed
    self.direction = 180
    if keyboard_check(ord('W')) {
        self.direction -= 45
    }else if keyboard_check(ord('S')) {
        self.direction += 45
    }
    if keyboard_check(ord('D')) {
        self.speed = 0
    }
    if(sprite_index != sprWalkleft){ 
        image_index = 0;
        sprite_index = sprWalkleft;
        //image_speed = imgSpeed;
    }
//Flytta höger och up/ner
}else if keyboard_check(ord('D')) {
    self.speed = lSpeed
    self.direction = 0
    if keyboard_check(ord('W')) {
        self.direction += 45
    }else if keyboard_check(ord('S')) {
        self.direction -= 45
    }
    if(sprite_index != sprWalkRight){ 
        image_index = 0;
        sprite_index=sprWalkRight;
        //image_speed = imgSpeed;
    }
    cVDir = 2;
//Flytta upp
}else if keyboard_check(ord('W')) {
    self.speed = lSpeed
    self.direction = 90
    if keyboard_check(ord('S')) {
        self.speed = 0
    }
    if(sprite_index != sprWalkUp){ 
        image_index = 0;
        sprite_index=sprWalkUp;
        //image_speed = imgSpeed;
    }
//Flytta ner
}else if keyboard_check(ord('S')) {
    self.speed = lSpeed
    self.direction = 270
    if(sprite_index != sprWalkDown){ 
        image_index = 0;
        sprite_index=sprWalkDown;
        //image_speed = imgSpeed;
    }
//stå Still
}else{
    self.speed = 0
    //Stående still håll
    if (cVDir == 180){
        sprite_index = sprMainLeft;
    }
    else if (cVDir == 0){
    sprite_index = sprMainRight;
    }
    else if (cVDir == 90){
    sprite_index = sprMainUp;
    }
    else if (cVDir == 270){
    sprite_index = sprMainDown;
    }
}
