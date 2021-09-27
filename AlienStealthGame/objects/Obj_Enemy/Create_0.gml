vsp = 0; //vertical speed
grv = 0.3; //gravity
walksp = 0.5; //walk speed
hsp = walksp; //horizontal speed

hp = 1; //hitpoints
hitfrom = 0;

sightID = instance_create_layer(x,y,"Enemies",Obj_Enemy_Sight);
sightExID = instance_create_layer(x,y,"Enemies",Obj_Enemy_SightEx);

if(!facesRight){
	hsp *= -1;
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
}