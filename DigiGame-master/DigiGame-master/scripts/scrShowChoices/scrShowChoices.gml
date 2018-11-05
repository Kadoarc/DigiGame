view_midw = surface_get_width(application_surface)/2;
view_midh  = surface_get_height(application_surface)/2;
for (i = 1; i < array_length_2d(messageGiver.myDialogue, index1); ++i){
	++index2;
	choiceBox[i-1] = instance_create_layer((i * 210), obj_choicelocation.y , "Instances", objChoiceBox);
	with (choiceBox[i-1])
	{
		maxLength = sprite_width - 30;
		maxHeight = sprite_height - 30;
		myMessage = messageGiver.myDialogue[index1, index2];
		//Parse String
		myNumber = string_copy(myMessage, string_length(myMessage) -1, 2);
		myNumber = real(myNumber);
		myMessage = string_copy(myMessage, 1, (string_length(myMessage)-2));
		image_speed = 0;
	
	}
	
}
showingChoices = true;
oDialogueSystem.alarm[0] = 10;