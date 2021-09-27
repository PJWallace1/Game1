doesMove = false;
facesRight = false;
hsp = -1;
with(sightID){
	x = other.x;
	y = other.y;
	image_xscale = sign(other.hsp) * 2;
	if(other.hsp > 0){
		direction = 0;
	}
	else{
		direction = 180;
	}
}
alarm[0] = room_speed * 5;