/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
xsp = 0;
dir=0;
if instance_exists(obj_player)
{
	if distance_to_object(obj_player) < 100
	{
		if !collision_line(x,y, obj_player.x, obj_player.y, obj_wall,1,1)
		{
if (alarm[0]) == -1 {
	
var bullet = instance_create_layer(x - (mirror*51),y, "Instances", obj_enemybullet);
with (bullet)
{
	direction = point_direction(x, y, obj_player.x, y);
	speed = 8;
}
	alarm[0] = 15;

		}
	}
}
}

