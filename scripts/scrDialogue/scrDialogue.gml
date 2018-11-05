dialogueBox = instance_create_layer(obj_player.x, obj_player.y, "Choices", objDialogueBox)

with (dialogueBox)
{
	maxLength = sprite_width;
	maxHeight = sprite_height;
	myMessage = messageGiver.myDialogue[index1,index2];
	messageIndex = 0;
	
	if(array_length_2d(messageGiver.myDialogue, index1) > 1 )
	hasChoices = true;
	else
	hasChoices = false;
	if(string_height_ext(myMessage, 16, maxLength) > maxHeight) {
	textHeight  = string_height_ext(messageGiver.myDialogue[index1, index2], 16, maxLength);
	amount = (textHeight / (sprite_height));
	startingAt = string_length(myMessage[i]) * (i + 1);
	for (i = 0; i < amount; ++i){
		myMessage[i] = string_copy(messageGiver.myDialogue[index1, index2], startingAt, (string_length(messageGiver.myDialogue[index1, index2])) / amount);
		startingAt = string_length(messageGiver.myDialogue[index1, index2]) / amount;
	}
}
else
myMessage[messageIndex] = messageGiver.myDialogue[index1, index2]
}