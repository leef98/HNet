///pause()
//Pausar hela spelet
if (global.paused == false) {
    with (all) {
        //Sparar alla variabler för unpause
        orig_speed = speed;
        orig_gravity = gravity;
        orig_image_speed = image_speed
        //Nollställer alla variabler för kontinuerlig aktion.
        speed = 0;
        gravity = 0;
        image_speed = 0;
    }
    global.paused = true;
}
