/// @desc ScreenShake(magnitude,frames)
/// @arg Magnitude sets power of shake
/// @arg Frames sets time 1s = 60

with(oCamera)
{
	if(argument0 > shakeRem)
	{
		shakeMag = argument0;
		shakeRem = argument0;
		shakeLength = argument1;
	}

}