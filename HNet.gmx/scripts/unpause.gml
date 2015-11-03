///unpause()
//Unpausar hela spelet
if (global.paused == true) {
    with (all) {
        speed = orig_speed;
        gravity = orig_gravity;
        image_speed = orig_image_speed;
    }
    global.paused = false;
}
