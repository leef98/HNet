///CreateItems()
//Skapar alla items och lägger till dem i en global variabel.
//Måste kallas efter globala Init
with (global.items) {
    //Gloves
    gloves = instance_create(0, 0, basItem)
    with (gloves) {
        agi = 10
        type = "gloves"
        sprite = sprGloves
        
    }
    
    //Chainmail
    chainmail = instance_create(0, 0, basItem)
    with (chainmail) {
        str = 15
        type = "chest"
    }
    
    //Legplates
    Legplates = instance_create (0, 0, basItem)
    with (Legplates) {
        str = 15
        type = "legs"
    }
}
