action = argument0;
draw_text(view_wview[0]/0.65,view_hview[0]/40,"Quests:"); 
draw_text(view_wview[0]/0.65,view_hview[0]/15,qText);
draw_text(view_wview[0]/0.65,view_hview[0]/9,qA);

switch(qType){

    case "gather":
        global.questAmount = qA;
        var item = qI;
        break;
}

if(global.check="true"){
    global.check="false";
    instance_destroy();
}