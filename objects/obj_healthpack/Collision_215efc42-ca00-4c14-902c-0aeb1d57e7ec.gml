/// @description Insert description here
// You can write your code in this editor
obj_player.hp += 33;
if obj_player.hp > obj_player.max_hp
{
obj_player.hp = obj_player.max_hp;	
}
instance_destroy();

