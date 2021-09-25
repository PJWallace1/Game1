if(hp < 1){
	SlideTransition(TRANS_MODE.GOTO, Room_DeathScreen);
	hascontrol = false;
	global.ammo = global.ammoThisRoom;
}

if(hsp != 0 || vsp != 0 || global.ammo < 1){
	with(gunID){
		image_alpha = 0;
		works = false;
	}
} else {
	with(gunID){
		image_alpha = 1;
		works = true;
	}
}