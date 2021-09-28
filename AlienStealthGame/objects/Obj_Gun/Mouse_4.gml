if(works && firingdelay < 0)
{
	recoil = 4;
	firingdelay = 50;
	with (instance_create_layer(x,y,"Bullets",Obj_Bullet))
	{
		speed = 33;
		direction = other.image_angle + random_range (-3,3);
		image_angle = direction;
	}
}

audio_play_sound(gunshot_sound_effect, 1, false)