with objWall {
    with objPlayer {
        avoid_rectangle(10, other.x, other.y, 32, 32, 0)
        x = xx
        y = yy
    }
}

hspeed=x-xprevious
vspeed=y-yprevious
