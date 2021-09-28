//Get player input
if(hascontrol){
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space) || keyboard_check(ord("W"));
	key_down = keyboard_check(vk_up) || keyboard_check(ord("S"));
	key_crouch = keyboard_check(vk_shift) || keyboard_check(ord("C"));


	//Calculate movement deficiency based on crouch
	if(key_crouch){
		walksp = 2;
		grv = 0.8;
	}
	else{
		walksp = 4;
		grv = 0.3;
	}

	//Calculate movement
	var move = key_right - key_left;

	hsp = move * walksp;

	vsp += grv;

	//Jump
	if((place_meeting(x, y + 1, Obj_Wall) || position_meeting(x, y + 2, Obj_Platform)) && key_jump)
	{
		vsp = -7;
	}

	///Horizontal Collision
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
	else if(position_meeting(x, y + 1, Obj_Platform) && !key_down && vsp >= 0)
	{
		vsp = 0;
	}

	y += vsp;

	//Animation

	if(key_crouch){
		sprite_index = Spr_Alien_Crouch;
		mask_index = Spr_Alien_Crouch;
		image_speed = 1;
		if(image_index == 1){
			image_speed = 0;
			image_index = 1;
		}
	}
	else if(!place_meeting(x, y+1, Obj_Wall) && !position_meeting(x, y + 1, Obj_Platform))
	{
		// audio_play_sound(Jump_Sound, 1, false)
		 sprite_index = Spr_Alien_Air;
		 mask_index = Spr_Alien;
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
		mask_index = Spr_Alien;
		if(hsp == 0)
		{
			sprite_index = Spr_Alien;
		}
		else
		{
			sprite_index = Spr_Alien_Run;
		}
	}

	if(hsp != 0)
	{
		image_xscale = sign(hsp);
	}
}
