//Call:     item_sprite(itemID)
//Info:     Returns the sprite of a stackable item
//Event:    Any
//Returns:  The sprite of a stackable item

var no,spr;
no=argument0
spr=-1

if (no=1) {spr=sMoney}
if (no=7) {spr=sWoodenArrows}

return (spr)
