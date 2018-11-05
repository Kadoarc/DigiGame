/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Horizontal Collision
if (place_meeting(x+xsp,y,obj_patrolzone))
	{
		while(!place_meeting(x+sign(xsp),y,obj_patrolzone))
			{
				x += sign(xsp);
			}
			dir *=-1;
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

if (place_meeting(x,y+ysp,obj_patrolzone))
{
while(!place_meeting(x,y+sign(ysp),obj_patrolzone))
{
y += sign(ysp);
}
ysp = 0;
}
y += ysp;


image_xscale = dir;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Attack

if instance_exists(obj_player)
{

	if distance_to_object(obj_player) < 50
	{
		if !collision_line(x,y, obj_player.x, obj_player.y, obj_wall,1,1)
		{
			if (alarm[0]) == -1 
			{
				if (obj_player.x > x)
				{
					dir = 1;
				}
				else if (obj_player.x < x)
				{
					dir = -1;
				}
				movespeed = 0;
				var bullet = instance_create_layer(x + (dir*55),y, "Instances", obj_enemyswing);
				alarm[0] = 5;
			}
		}
	}
	else
	{
		
		movespeed = 1;
	}
}


