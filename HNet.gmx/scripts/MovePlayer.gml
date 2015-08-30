///MovePlayer()
self.speed = 5
var cVDir = 0
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
}else if keyboard_check(ord('D')) {
    self.direction = 0
    if keyboard_check(ord('W')) {
        self.direction += 45
    }else if keyboard_check(ord('S')) {
        self.direction -w= 45
    }
}else if keyboard_check(ord('W')) {
    self.direction = 90
    if keyboard_check(ord('S')) {
        self.speed = 0
    }
}else if keyboard_check(ord('S')) {
    self.direction = 270
}
/*
if keyboard_check(ord('W')) {
    vspeed = vspeed - 5
    vDir = 1
}
if keyboard_check(ord('S')) {
    vspeed = vspeed + 5
    vDir = 1   
}
if vDir > 0 && hDir > 0 {
    if hspeed < 0 {
        hspeed = -sqrt(5^2)
    }else {
        hspeed = sqrt(5^2)
    }
    if vspeed < 0 {
        vspeed = -sqrt(5^2)
    }else {
        vspeed = sqrt(5^2)
    }
}*/
