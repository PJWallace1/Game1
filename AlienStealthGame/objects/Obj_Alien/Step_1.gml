if(hp < 1){
	SlideTransition(TRANS_MODE.GOTO, Room_DeathScreen);
	hascontrol = false;
}

if(hsp != 0 || vsp != 0){
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