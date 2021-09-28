/// @description Insert description here
// You can write your code in this editor

if room == Room_Menu {
draw_set_halign(fa_center);
var c = c_green;
draw_text_transformed_color(
room_width/2, 300, "ALIEN INFILTRATION", 3, 3, 0, c,c,c,c, 1
);
} 

if room == Room_DeathScreen {
	draw_set_halign(fa_center);
var c = c_green;
draw_text_transformed_color(
room_width/2, 300, "YOU GOT CAUGHT", 3, 3, 0, c,c,c,c, 1
);
} 