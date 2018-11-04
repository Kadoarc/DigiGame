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
		show_message("Made by +ONE for Media Design School");
		break;
	}
	default: break;

}
