//local speed
var lSpeed = cSpeed
//sprint
if keyboard_check(vk_shift){
    lSpeed = cSpeed*2
}
///MovePlayer()
var cVDir = 0
//Flytta vänster och up/ner
if keyboard_check(ord('A')) {
    self.direction = 180
    if keyboard_check(ord('W')) {
        self.direction -= 45
    }else if keyboard_check(ord('S')) {
        self.direction += 45
    }
    if keyboard_check(ord('D')) {
        self.speed = 0
    }
    self.speed = lSpeed
//Flytta höger och up/ner
}else if keyboard_check(ord('D')) {
    self.direction = 0
    if keyboard_check(ord('W')) {
        self.direction += 45
    }else if keyboard_check(ord('S')) {
        self.direction -= 45
    }
    self.speed = lSpeed
//Flytta upp
}else if keyboard_check(ord('W')) {
    self.direction = 90
    if keyboard_check(ord('S')) {
        self.speed = 0
    }
    self.speed = lSpeed
//Flytta ner
}else if keyboard_check(ord('S')) {
    self.direction = 270
    self.speed = lSpeed
} else{
    self.speed = 0
}
