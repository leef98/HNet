//Call:     drop_item(invno)
//Info:     This will create a oItemOnGround object on the
//          players position with the selected item's variables.
//Event:    Any
//Returns:  ---

var invno,obj;
invno=argument0
obj=instance_create(oPlayer.x+16,oPlayer.y,oItemOnGround)

obj.item=global.inv_item[invno,0]
obj.number=global.inv_item[invno,1]
global.inv_item[invno,0]=0
global.inv_item[invno,1]=0
