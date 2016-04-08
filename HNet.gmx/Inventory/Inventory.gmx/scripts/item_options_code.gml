//Call:     item_options_code(itemID,optionno)
//Info:     Sets what will happen when you click option optiono
//          in the selecte item.
//Event:    Any
//Returns:  ---

var no,no1;
no=argument0
no1=argument1

if (no=1) {
    if (no1=1) {drop_item(global.inv_select)}   //Drop
}
if (no=2) {
    if (no1=1) {show_message("Wear!")}          //Simple message
    if (no1=2) {drop_item(global.inv_select)}   //Drop
}
if (no=3) {
    if (no1=1) {show_message("Wear!")}          //Simple message
    if (no1=2) {drop_item(global.inv_select)}   //Drop
}
if (no=4) {
    if (no1=1) {drop_item(global.inv_select)}   //Drop
}
if (no=5) {
    if (no1=1) {drop_item(global.inv_select)}   //Drop
}
if (no=6) {
    if (no1=1) {oPlayer.hp+=20 global.inv_item[global.inv_select,0]=0 global.inv_item[global.inv_select,1]=0} //add hp and remove item
    if (no1=2) {drop_item(global.inv_select)}   //Drop
}
if (no=7) {
    if (no1=1) {show_message("Wear!!")}         //Simple message
    if (no1=2) {drop_item(global.inv_select)}   //Drop
}
if (no=8) {
    if (no1=1) {oPlayer.hp+=10 global.inv_item[global.inv_select,0]=0 global.inv_item[global.inv_select,1]=0} //add hp and remove item
    if (no1=2) {show_message("It smells good!")}//Simple message
    if (no1=3) {drop_item(global.inv_select)}   //Drop
}
if (no=9) {
    if (no1=1) {show_message("It says:#Please give credit to Davve941018 if you use this example!")}
    if (no1=2) {show_message("Um... why would you wanna do that?")}
    if (no1=3) {show_message("What's the point with that?")}
    if (no1=4) {global.inv_item[global.inv_select,0]=0 global.inv_item[global.inv_select,1]=0}
    if (no1=5) {global.inv_item[global.inv_select,0]=10}
    if (no1=6) {show_message("It's just a piece of paper...")}
    if (no1=7) {show_message("Nothing interesting happens.")}
    if (no1=8) {oPlayer.hp+=1 global.inv_item[global.inv_select,0]=0 global.inv_item[global.inv_select,1]=0}
    if (no1=9) {drop_item(global.inv_select)}
}
if (no=10) {
    if (no1=1) {drop_item(global.inv_select)}   //Drop
}
