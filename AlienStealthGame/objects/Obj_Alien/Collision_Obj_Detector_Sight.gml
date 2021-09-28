if(!key_crouch || vsp != 0 || hsp != 0){
	hp--;
	audio_play_sound(Player_Death_Sound, 1, false);
}


