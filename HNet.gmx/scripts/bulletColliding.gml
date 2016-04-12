//var inst = instance_place(x, y, objPlayer)
if other.object_index != objPlayer {
    if object_is_ancestor(other.object_index, basLiving) {
        other.hp -= dmg
    }
    instance_destroy()
}
