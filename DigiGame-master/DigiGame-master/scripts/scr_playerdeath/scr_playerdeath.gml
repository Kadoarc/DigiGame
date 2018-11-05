if (global.checkpointR == room)
{
	instance_destroy(obj_player);
	instance_create_layer(global.checkpointx, global.checkpointy, "Instances", obj_player);
	obj_player.x = global.checkpointx;
	obj_player.y = global.checkpointy;

	
}
else
{
	obj_player.x = obj_player.startx;
	obj_player.y = obj_player.starty;
	
}
