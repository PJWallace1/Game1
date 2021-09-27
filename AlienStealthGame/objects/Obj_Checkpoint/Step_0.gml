
if(place_meeting(x, y, Obj_Alien) && id != global.checkpoint){
	global.checkpoint = id;
	global.checkpointx = x;
	global.checkpointy = y;
	global.checkpointR = room;
	global.ammoThisRoom = global.ammo;
}


if(global.checkpointR == room && global.checkpoint == id){
	image_index = 1;
} else {
	image_index = 0;
}