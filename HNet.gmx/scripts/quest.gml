action = argument0;
draw_text(view_wview[0]/0.65,view_hview[0]/40,"Quests:"); 
draw_text(view_wview[0]/0.78,view_hview[0]/15,qText);
draw_text(view_wview[0]/0.65,view_hview[0]/9,qA);

switch(qType){

    case "gather":
        global.questAmount = qA;
        var item = qI;
        break;
}

if(global.check="true"){
    //om man är klar med nuvarande quest
    global.check="false";
    
    instance_destroy();
}

//om quest är klart och ska lämnas in
if (global.check="return"){

    instance_destroy();
    
    inst = instance_create(-9999999999,-9999999999999,objQuest);
                    
        with(inst){
            qText = "";
            draw_text_colour(view_wview[0]/0.8,view_hview[0]/14,"Return to complete the mission!",c_lime, c_lime, c_green, c_green, 1); 
                
            qType = "return";
            qA = "";
            qI = global.questItem;
                        
                    }

}
