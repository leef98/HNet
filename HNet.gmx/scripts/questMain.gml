// någonstans man kan plocka upp quests
// något som sparar vilka quests som är aktiva
// minimun requirement för vissa quests?

//quest = quest type
Npc=argument0;


switch (Npc){

    case "Anders":
    
        var questText = "Get some Gloves";
        
        var global.questType = "gather";
        var questAmount = 1;
        var global.questItem = global.items.mittens1;
        var global.checkItem = "";
      
        break;
    
 
    case 2:
  
        //quest2(questType , active ,complete);
              
        break;
       
       
    }
    
            draw_text(lWView/3,view_hview[0]/0.79,questText); 
 
   //copy pasterino from NpcDialogue
        if(mouse_y>=view_yview+327-41 && mouse_y<=view_yview+336-41){
        
                 draw_text_colour(lWView/0.63,view_hview[0]/0.82,input1,c_lime, c_lime, c_green, c_green, 1); 
                
                 if(mouse_check_button_pressed(mb_left)){
                 
                    inst = instance_create(-9999999999,-9999999999999,objQuest);
                    
                    with(inst){
                        qText = questText;
                        qType = global.questType;
                        qA = questAmount;
                        qI = global.questItem;
                        
                    }
                    answer = input1;
                    
                }
                
            }
