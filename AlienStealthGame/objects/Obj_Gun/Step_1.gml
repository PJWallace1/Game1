/// @description Insert description here
// You can write your code in this editor


if(!instance_exists(Obj_Alien)){
	instance_destroy();
}
else{
	x = Obj_Alien.x;
	if(Obj_Alien.key_crouch){
		y = Obj_Alien.y - 16;
	}
	else{
		y = Obj_Alien.y - 35;
	}

	image_angle = point_direction(x,y,mouse_x,mouse_y); 

	firingdelay = firingdelay -1;
	recoil = max(0,recoil - 1);

	if (works && mouse_check_button_pressed(mb_left)) && (firingdelay < 0 && global.ammo > 0)
	{
		global.ammo--;
		instance_create_layer(x, y, "Instances", Obj_ShotDetectionLeft);
		instance_create_layer(x, y, "Instances", Obj_ShotDetectionRight);
		recoil = 4;
		firingdelay = 20;
		with (instance_create_layer(x,y,"Bullets",Obj_Bullet))
		{
			speed = 33;
			direction = other.image_angle + random_range (-3,3);
			image_angle = direction;
		}
	}

	x = x - lengthdir_x(recoil,image_angle)
	y = y - lengthdir_x(recoil,image_angle)


	if (image_angle > 90) && (image_angle < 270)
	{
		image_yscale = -1; 
	}
	else
	{
		image_yscale = 1;
	}
}

