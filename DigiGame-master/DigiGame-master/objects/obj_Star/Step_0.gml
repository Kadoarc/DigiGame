if (place_meeting(x,y,obj_player) && !activated)
{
	activated = true;
	global.starspowered += 1;
}

if(global.starspowered = 3)
{
	instance_create_depth(x,y,0,obj_levelend);	
}