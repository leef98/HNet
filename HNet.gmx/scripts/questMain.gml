// någonstans man kan plocka upp quests
// något som sparar vilka quests som är aktiva
// minimun requirement för vissa quests?

//quest = quest type
Npc=argument0;


switch (Npc){

    case "Anders":
    
        var questText = "kill Five Monsters";
        
        var questType = "kill";
        var questAmount = 5;
    
        draw_text(view_wview[0]/3,view_hview[0]/0.79,questText); 
        //quest1(active, value, complete);
        
    
        break;
    
 
    case 2:
  
        //quest2(questType , active ,complete);
              
        break;
       
       
       
       
       
       
       
    }
 
   //copy pasterino from NpcDialogue
        if(mouse_y>=view_yview+327 && mouse_y<=view_yview+336){
        
                 draw_text_colour(view_wview[0]/0.63,view_hview[0]/0.82,input1,c_lime, c_lime, c_green, c_green, 1); 
                
                 if(mouse_check_button_pressed(mb_left)){
                 
                    inst = instance_create(-9999999999,-9999999999999,objQuest);
                    
                    with(inst){
                        qText = questText;
                        qType = questType;
                        qA = questAmount;
                        
                    }
                    answer = input1;
                    
                }
                
            }
