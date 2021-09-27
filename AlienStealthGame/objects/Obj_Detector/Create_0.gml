sightID = instance_create_layer(x + 16,y + 30,"Enemies",Obj_Detector_Sight);

with(sightID){
	image_angle = other.startDegree;
	doesRotate = other.doesMove;
}
