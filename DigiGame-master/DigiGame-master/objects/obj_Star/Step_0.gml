if (place_meeting(x,y,obj_player) && !activated)
{
	activated = true;
	global.starspowered += 1;
}