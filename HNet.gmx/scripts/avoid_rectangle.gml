//avoid_rectangle(player_radius,x,y,width,height,angle)
var xto,yto,v,h,ah,vh,d;
argument3/=2
argument4/=2
if point_distance(x,y,argument1,argument2)<point_distance(0,0,argument3,argument4)+argument0
{
    xto=cos(degtorad(argument5))
    yto=sin(degtorad(argument5))
    
    xx=x-argument1
    yy=y-argument2
    
    h=(xto*xx-yto*yy)
    v=(xto*yy+yto*xx)
    ah=abs(h/argument3)
    av=abs(v/argument4)
    
    if max(ah,av)<=1
    {
        //If the object is inside the rectangle
        if ah>av{
            h=(argument3+argument0)*sign(h)}
        else{
            v=(argument4+argument0)*sign(v)}
        xx=argument1+xto*h+yto*v
        yy=argument2+xto*v-yto*h
        return 1;
    }
    else
    {
        //If the object is touching the rectangle
        h=median(h,-argument3,argument3)
        v=median(v,-argument4,argument4)
        xx=argument1+xto*h+yto*v
        yy=argument2+xto*v-yto*h
        d=point_distance(xx,yy,x,y)/argument0
        if d<1
        {
            xx+=(x-xx)/d
            yy+=(y-yy)/d
            return 1;
        }
    }
}
xx=x
yy=y
return 0;
