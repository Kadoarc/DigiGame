/// @description Insert description here
// You can write your code in this editor
with(obj_player)
{
			obj_player.hp -= 2;
			obj_player.flash = 1;	
			ScreenShake(10,10);
}
instance_destroy();

