/// @description Insert description here
// You can write your code in this editor
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

if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	recoil = 4;
	firingdelay = 100;
	with (instance_create_layer(x,y,"Bullets",Obj_Bullet))
	{
		speed = 50;
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
