///CreateItems()
//Skapar alla items och lägger till dem i en global variabel.
//Måste kallas efter globala Init
with (global.items) {
    //Gloves
    var lGloves = instance_create(0, 0, basItem)
    with (lGloves) {
        agi = 10
        type = "gloves"
        
    }
    gloves = lGloves
    
    //Chainmail
    var lChainmail = instance_create(0, 0, basItem)
    with (lChainmail) {
        str = 15
        type = "chest"
    }
    chainmail = lChainmail
}
