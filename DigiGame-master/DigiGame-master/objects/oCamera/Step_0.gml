/// @description Insert description here
// You can write your code in this editor
x+=(xTo-x)/8;
y+=(yTo-y)/8;

if(follow != noone && instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//ScreenShake
x += random_range(-shakeRem, shakeRem);
y += random_range(-shakeRem, shakeRem);
shakeRem = max(0, shakeRem-((1/shakeLength) * shakeMag));

var vm = matrix_build_lookat(x,y,-1,x,y,0,0,1,0);
camera_set_view_mat(camera, vm);