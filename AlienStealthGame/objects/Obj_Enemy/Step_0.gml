vsp += grv;

//Horizontal Collision
if(place_meeting(x + hsp, y, Obj_Wall))
{
	//sign() returns -1 for negative value and 1 for positive value
	while(!place_meeting(x + sign(hsp), y, Obj_Wall))
	{
		x += sign(hsp);
	}
	hsp = -hsp;
}

x += hsp;

//Modify Enemy Sight
with(sightID){
	x = other.x;
	y = other.y;
	image_xscale = sign(other.hsp);
	if(other.hsp > 0){
		direction = 0;
	}
	else{
		direction = 180;
	}
}

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
	 sprite_index = sEnemyA;
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
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyR;
	}
}

if(hsp != 0)
{
	image_xscale = sign(hsp);
}
*/