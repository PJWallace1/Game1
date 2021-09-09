//Get player input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space) || keyboard_check(ord("W"));

//Calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp += grv;

if(place_meeting(x, y + 1, Obj_Wall) && key_jump)
{
	vsp = -7;
}

//Horizontal Collision
if(place_meeting(x + hsp, y, Obj_Wall))
{
	//sign() returns -1 for negative value and 1 for positive value
	while(!place_meeting(x + sign(hsp), y, Obj_Wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

//Vertical Collision
if(place_meeting(x, y + vsp, Obj_Wall))
{
	//sign() returns -1 for negative value and 1 for positive value
	while(!place_meeting(x, y + sign(vsp), Obj_Wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

//Animation
/*
if(!place_meeting(x, y+1, Obj_Wall))
{
	 sprite_index = sPlayerA;
	 image_speed = 0;
	 if(sign(vsp) > 0)
	 {
		 image_index = 1;
	 } 
	 else 
	 {
		 image_index = 0;
	 }
}
else
{
	image_speed = 1;
	if(hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
	}
}

if(hsp != 0)
{
	image_xscale = sign(hsp);
}
*/