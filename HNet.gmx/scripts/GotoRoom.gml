///GotoRoom(NextRoom)
//Ludvig
//Uppdaterar datan om hur många block ifrån rummen man är
//Och kollar om de behövs resetas med hjälp av query
//Samt går till nästa rum som är skickat in i funktionen
//Nästa rum
var NextRoom = argument0;

//Lägger till nuvarande rum till queue då man håller på att gå ut ur det.
//Om nästa rum inte är der rummet man kom ifrån
if (ds_queue_empty(global.qRooms) == false) {
    if (ds_queue_head(global.qRooms) != NextRoom && ds_queue_tail(global.qRooms) != NextRoom) {
        ds_queue_enqueue(global.qRooms, NextRoom);
    }else if (ds_queue_head(global.qRooms) == NextRoom) {
        //Om man redan har varit i detta rum så refreshar den så att detta rum inte blir resetat när ett annat rum skall bli resetat.
        //1-2-3-2-1
        //Då skall först 1 bli poppat sedan 3 bli poppat, om man inte flyttar om 2 så kommer den bli poppad istället.
        ds_queue_enqueue(global.qRooms, ds_queue_dequeue(global.qRooms));
    }
}else {
    ds_queue_enqueue(global.qRooms, NextRoom);
}

//Kollar om det är något rum som behöver resetas
if (ds_queue_size(global.qRooms) > 2) {
    //Popar ut den ur queue
    var deRoom = ds_queue_dequeue(global.qRooms);
    //ds_queue_enqueue(global.qRooms, deRoom);
    //Går till den
    room_goto(deRoom);
    //Resetar, sätter persisten till false och restartar, då kommer den att resetas men ändå få tillbaka persistent.
    //room_assign(deRoom, deRoom);
    global.restartRoom[? deRoom] = true;
    show_message(room_get_name(deRoom));
    //show_message(room_get_name(room));
}
//Går till nästa rum
room_goto(NextRoom);
