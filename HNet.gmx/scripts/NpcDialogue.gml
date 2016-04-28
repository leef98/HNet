timer++;

//texture
draw_sprite(SprMsgBox,-1,view_wview[0],view_hview[0]/0.625);

//tar bort "obj" från "ObjNamn"
var NpcName = string_delete(name,1,3);

//namn på object
draw_text(view_wview[0]/1.08,view_hview[0]/0.86,NpcName); 

if(timer > 1){

    if keyboard_check_pressed(vk_tab){
    show_message(global.check);
        instance_destroy();     
        
    }
    
}

answer = "";

switch(NpcName){

    case "Anders":
        
        //NPC text
        
        switch(dialogue){
        
            case "start":
            
                text = "Greetings stranger, how may i help you?";
            
                input1 = "Quests...";
                input2 = "Talk";
                input3 = "Leave";
                input4 = "";
                break;
            
            case "Quest":
            
                if(instance_exists(objQuest)&&(global.check!="return")){
                
                    text = "You have not finished your last quest i gave you!";
                    
                   input1 = "Cancel Quest";
                   input2 = "Leave";
                   input3 = "";
                   input4 = "";
                
                }if(instance_exists(objQuest)&&(global.check=="return")){
                
                    text = "You've got the gloves i asked for, you keep em!";
                    
                   input1 = "Turn in mission";
                   input2 = "Leave";
                   input3 = "";
                   input4 = "";
                
                }else if(!instance_exists(objQuest)&&global.check=="false"){
                
                   text = "Yes, i do have a quest for you Hubert!";
                   
                   //namn på npc
                   questMain(NpcName);
                   
                    input1 = "Accept";
                    input2 = "Decline";
                    input3 = "Leave";
                    input4 = "";
                   
                   
                }
             
            
             
                break;
            
            case "Talk":
            
                text ="What a lovely weather today!";
         
                input1 = "Yes";
                input2 = "No";
                input3 = "Maybe";
                input4 = "Leave";
                break;
                
         case "Accept":
            
                text ="Return to me when you have completed the quest!";
         
                input1 = "Leave";
                input2 = "";
                input3 = "";
                input4 = "";
                break;
        }
      
        
      
    break;
    
    default:
   
        
        text = "Greetings stranger!";
            
                input1 = "";
                input2 = "";
                input3 = "";
                input4 = "";
    
        break;

}

    //interactions
    
    //meddelande
    draw_text(view_wview[0]/3,view_hview[0]/0.82,text); 
    
    //svarsfält
    draw_text(view_wview[0]/0.63,view_hview[0]/0.82,input1); 
    draw_text(view_wview[0]/0.63,view_hview[0]/0.79,input2); 
    draw_text(view_wview[0]/0.63,view_hview[0]/0.76,input3); 
    draw_text(view_wview[0]/0.63,view_hview[0]/0.73,input4);


  if(mouse_x>=view_xview+310 && mouse_x<=view_xview+360){
            
            dialogOn = true;
            //input 1
            if(mouse_y>=view_yview+327 && mouse_y<=view_yview+336){
        
                 draw_text_colour(view_wview[0]/0.63,view_hview[0]/0.82,input1,c_lime, c_lime, c_green, c_green, 1); 
                
                 if(mouse_check_button_pressed(mb_left)){
                 
                  answer = input1;
                    
                }
                
            }
            
            //input 2
            if(mouse_y>=view_yview+336 && mouse_y<=view_yview+345){
        
                draw_text_colour(view_wview[0]/0.63,view_hview[0]/0.79,input2,c_lime, c_lime, c_green, c_green, 1); 
                
                if(mouse_check_button_pressed(mb_left)){
                 
                    answer = input2;
                    
                }
            }
            
            //input 3
            if(mouse_y>=view_yview+345 && mouse_y<=view_yview+367){
        
                draw_text_colour(view_wview[0]/0.63,view_hview[0]/0.76,input3,c_lime, c_lime, c_green, c_green, 1); 
        
                if(mouse_check_button_pressed(mb_left)){
                 
                    answer = input3;
                    
                }
            }
            
            //input 4
            if(mouse_y>=view_yview+367 && mouse_y<=view_yview+379){
        
                draw_text_colour(view_wview[0]/0.63,view_hview[0]/0.73,input4,c_lime, c_lime, c_green, c_green, 1); 
        
                if(mouse_check_button_pressed(mb_left)){
                 
                    answer = input4;
                    
                }
            }
        }
        else{dialogOn = false;}

switch(answer){
    case "Quests...":
        dialogue = "Quest";
        break;
        
    case "Talk":
        dialogue = "Talk";
        break;
        
    case "Accept":
        dialogue = "Accept";
        break;
        
    case "Decline":
        dialogue = "Decline";
        break;
    case "Yes":
        instance_destroy();
        break;
    case "No":
        instance_destroy();
        break;
    case "Maybe":
        instance_destroy();
        break;
        
    case "Leave":
        instance_destroy();
        break;     
        
    case "Cancel Quest":
        instance_destroy();
        global.check="true";
        break;
        
    case "Turn in mission":
        instance_destroy();
        global.check="true";
        break;
    
        
    }
