//var inst = instance_place(x, y, objMain)
if other.object_index != objMain {


    if object_is_ancestor(other.object_index, basLiving) {
        other.hp -= dmg
    }
}
