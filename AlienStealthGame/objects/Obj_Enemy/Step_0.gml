if(doesMove){
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
	with(sightExID){
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
	if(place_meeting(x, y + vsp, Obj_Wall) || place_meeting(x, y + vsp, Obj_Platform))
	{
		//sign() returns -1 for negative value and 1 for positive value
		while(!place_meeting(x, y + sign(vsp), Obj_Wall) && !place_meeting(x, y + sign(vsp), Obj_Platform))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}

	y += vsp;
	
	if(hsp != 0)
	{
		image_xscale = sign(hsp);
	}
}