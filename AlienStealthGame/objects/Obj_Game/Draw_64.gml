if(room != Room_Menu && room != Room_Credits && room != Room_DeathScreen && instance_exists(Obj_Alien)){
	draw_set_colour(c_black);
	draw_set_font(fAmmo);
	draw_set_halign(fa_right);
	draw_set_valign(fa_top);
	draw_text(global.gui_width - 48, 12, string(global.ammo));
	draw_sprite(Spr_Ammo, 0, global.gui_width - 8, 15);
}