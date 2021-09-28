if(room == Room_Menu){
		audio_play_sound(Main_Menu_Music, 1, true)
}

if(room == Room_Tutorial){
		audio_play_sound(Background_Music, 3, true)
}

if(room == Room_2){
		audio_play_sound(Background_Music, 3, true)
}

if(room == Room_Last){
		audio_play_sound(Background_Music, 3, true)
}

if(room == Room_DeathScreen){
		audio_play_sound(Main_Menu_Music, 1, true)
}

global.gui_width = display_get_gui_width();
global.gui_height = display_get_gui_height();
global.ammoThisRoom = global.ammo;

