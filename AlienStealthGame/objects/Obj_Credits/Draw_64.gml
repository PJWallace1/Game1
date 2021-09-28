draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

var offset = 2;
var txt = menu[0];
txt = string_insert("> ", txt, 0);
var col = c_white;
var xx = menu_x;
var yy = menu_y;
draw_set_color(c_black);
draw_text(xx - offset, yy, txt);
draw_text(xx + offset, yy, txt);
draw_text(xx, yy - offset, txt);
draw_text(xx, yy + offset, txt);
draw_set_color(col);
draw_text(xx, yy, txt);

draw_set_font(fCredits);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_color(c_white);

for(var i = 0; i < array_length_1d(names); i++){
	draw_text(global.gui_width / 2, global.gui_height / 2 + (i * font_get_size(fCredits) * 1.5), names[i]);
}

if(global.won){
	draw_set_color(c_green);
	draw_text(global.gui_width / 2, global.gui_height / 4, wonStr);
}