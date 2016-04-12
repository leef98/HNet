//var inst = instance_place(x, y, objMain)
if other.object_index != objPlayer {
    if object_is_ancestor(other.object_index, basLiving )  {
    
        other.hp -= dmg
      
       
   }else if object_is_ancestor(other.object_index, basEntity )  {
    
        follow = true
      
       
   }
}

if(follow = true){

   destroyOnRetract = true;
    direction = point_direction(x,y,global.player.x,global.player.y)

}
