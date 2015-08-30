///MovePlayer()
var hspeed = 0
var vspeed = 0
var hDir = 0
var vDir = 0
if keyboard_check(ord('A')) {
    hspeed = hspeed -5
    hDir = 1
}
if keyboard_check(ord('D')) {
    hspeed = hspeed + 5
    hDir = 1
}
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
}

