///LightningStormStep()
if (global.paused){exit;}
//stepsLeft -= 1;
cStep += 1;
//Lightning strike cooldown, även indikator för att det är en lightningstrike just nu.
lightCool -= 1;

//Slutanimationen
if (cStep >= (stepsFinish - sEndAnim)) {
    if (sprite_index != sprLightningEnd) {image_index = 0;}//Resetar animationen för att det inte slall bli hackigt
    sprite_index = sprLightningEnd;
    image_speed = 0.2;
}else if (cStep >= sStep && lightCool <= 0) {
    sprite_index = sprLightningCloud;
    image_speed = 0.5;
        //createAnim = false;
}
//Kollar så att det är inte en lightning just nu, att det blir random lightning och att den inte är i någon annan animation
if (lightCool <= 0 && irandom(19) == 1 && cStep >= sStep && cStep < (stepsFinish - sEndAnim)) {//Kollar om det blir en lightning strike
    sprite_index = sprLightningStrike;
    lightCool = 15;
    image_speed = 0.5;
}
//Förstör objektet
if (cStep >= stepsFinish) {
    instance_destroy();
}
