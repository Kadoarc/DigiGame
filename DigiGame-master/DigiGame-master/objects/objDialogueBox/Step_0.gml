/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("M"))){
	++messageIndex;
	if (messageIndex >= array_length_1d(myMessage) && !hasChoices) {
	with (objDialogueBox)
	instance_destroy();
	obj_player.alarm[0] = 10;
		
	}
	else if (messageIndex >= array_length_1d(myMessage) && hasChoices){
	with (objDialogueBox)
	instance_destroy();
	scrShowChoices();
}
}