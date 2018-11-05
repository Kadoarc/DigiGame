//Script for main menu code
switch (mpos)
{
	case 0:
	{
		room_goto_next();
		break;
	}
	
	case 1:
	{
		game_end();
		break;
	}
	
	case 2:
	{
		show_message("Made by Jeremy Bungard, Daniel Joosten and Sione VR for Media Design School");
		break;
	}
	default: break;

}
