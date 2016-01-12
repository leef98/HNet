///LightningStorm()
//Loopar och skapar 3 lightning clouds
for (var i = 0; i<3; i++) {
    //Skapar instansen med random koordinater, varierar från -50 till 50
    var storm = instance_create(mouse_x + (irandom_range(-10, 10) * 3), mouse_y + (irandom_range(-10, 10) * 2), objLightningStorm);

    //Sätter att den skall vara i 5 sek
    with (storm) {
        stepsFinish = 150;
    }
}

cooldown[? argument0] = 300;
//storm.stepsLeft = 150
