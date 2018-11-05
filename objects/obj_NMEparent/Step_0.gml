
// Movement
xsp = dir*movespeed;
ysp += grav;

if (obj_player.x > x)
{
	image_xscale = 1
	mirror = image_xscale;
}
else
{
	image_xscale = -1
	mirror = image_xscale;
}
//Horizontal Collision
if (place_meeting(x+xsp,y,oSolid))
{
while(!place_meeting(x+sign(xsp),y, oSolid))
{
x += sign(xsp);
}
dir*=-1
}
x += xsp;

if (place_meeting(x+xsp,y,obj_inviswall))
{
while(!place_meeting(x+sign(xsp),y,obj_inviswall))
{
x += sign(xsp);
}
dir*=-1
}
x += xsp;


//Vertical Collision
if (place_meeting(x,y+ysp,oSolid))
	{
		while(!place_meeting(x,y+sign(ysp),oSolid))
			{
				y += sign(ysp);
			}
			ysp = 0;
	}
y += ysp;

//Vertical Collision
if (place_meeting(x,y+ysp,obj_inviswall))
	{
		while(!place_meeting(x,y+sign(ysp),obj_inviswall))
			{
				y += sign(ysp);
			}
			ysp = 0;
	}
y += ysp;



//Loot Drop
if (hp<=0){
	instance_destroy();
}
