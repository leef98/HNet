//Ludvig
ini_open("save.ini")
savePlayer()
saveRoom()
ini_write_real('player','test2', 25)
ini_close()
ini_open("equipment.ini")
show_message(ini_read_real('items', 'test', 0))
ini_close()
