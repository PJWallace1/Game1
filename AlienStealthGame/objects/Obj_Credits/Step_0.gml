
//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//Keyboard Controls
if(menu_control){
	if(keyboard_check_pressed(vk_enter)){
		menu_x_target = global.gui_width + 200;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}
if(menu_x > global.gui_width + 150 && menu_committed != -1){
	global.won = false;
	SlideTransition(TRANS_MODE.GOTO, Room_Menu);
}