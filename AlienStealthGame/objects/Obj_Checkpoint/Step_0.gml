if(place_meeting(x, y, Obj_Alien)){
	global.checkpoint = id;
	global.checkpointx = x;
	global.checkpointy = y;
	global.checkpointR = room;
}

if(global.checkpointR == room && global.checkpoint == id){
	image_index = 1;
}