///loadItem(itemName)
var itemName = argument0
ini_open("equipment.ini")
var item = ds_map_create();

item[? "agi"] = ini_read_real(itemName, "agi", 0)
item[? "str"] = ini_read_real(itemName, "str", 0)
item[? "int"] = ini_read_real(itemName, "int", 0)
item[? "health"] = ini_read_real(itemName, "health", 0)
item[? "mana"] = ini_read_real(itemName, "mana", 0)
item[? "type"] = ini_read_real(itemName, "type", 0)
item[? "type"] = "gloves"
ini_close()
return item

