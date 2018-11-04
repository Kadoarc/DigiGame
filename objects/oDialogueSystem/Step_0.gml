/// @description Choosing Choices
// You can write your code in this editor

if (showingChoices){
	
	for(i=0; i < array_length_1d(choiceBox); ++i)
	{
		choiceBox[i].image_index = 0;
	}
	if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
	currentChoice = clamp(++currentChoice, 0, array_length_1d(choiceBox) -1);
	}
	if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){
		currentChoice = clamp(--currentChoice, 0, array_length_1d(choiceBox) -1);
	}
	choiceBox[currentChoice].image_index = 1;
	
	if(keyboard_check_pressed(ord("M")) && alarm[0] < 0)
	{
	index1 = choiceBox[currentChoice].myNumber;	
	index2 =0;
	showingChoices =false;
	currentChoice = 0;
	//Destroy choice boxes
	for (i = 0; i <array_length_1d(choiceBox); ++i)
	{
	with (choiceBox[i])
	instance_destroy();
	}
	choiceBox = 0;
	if (index1 != 99)
	scrDialogue();
	else
	obj_player.alarm[0] = 10;
	}
}