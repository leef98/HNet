//Skapa alla abilities
var sword = instance_create(basSkill, 0, 0);
with (sword) {
    sprite = uiSword;
    skill = abilitySwordStab
}
var storm = instance_create(basSkill, 0, 0);
with (storm) {
    sprite = uiFireball
    skill = LightningStorm
}
var skills = instance_create(arrSkills, 0, 0);
with (skills) {
    arr[0] = sword;
    arr[1] = storm;
}
global.skills = skills;

