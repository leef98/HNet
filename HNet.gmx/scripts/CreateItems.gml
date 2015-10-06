///CreateItems()
//Skapar alla items och lägger till dem i en global variabel.
//Måste kallas efter globala Init
with (global.items) {
        //Cowl
    cowl = instance_create (0,0, basItem)
    with (cowl) {
        int = 6
        type = "head"
    }

        //Leatherpads
    leatherpads = instance_create(0,0, basItem)
    with (leatherpads) {
        agi = 8
        type = "shoulder"
    }

        //Chainmail
    chainmail = instance_create(0, 0, basItem)
    with (chainmail) {
        str = 15
        type = "chest"
    }
    
        //Gloves
    gloves = instance_create(0, 0, basItem)
    with (gloves) {
        agi = 10
        type = "gloves"
        sprite = sprGloves 
    }
    
    //Legplates
    legplates = instance_create (0, 0, basItem)
    with (legplates) {
        str = 15
        type = "legs"
    }
    
    //Shoes
    shoes = instance_create (0, 0, basItem)
    with (shoes) {
        agi = 5
        type = "feet"
    }
}
