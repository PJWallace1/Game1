gui_margin = 32;

menu_x = global.gui_width + 200;
menu_y = global.gui_height - gui_margin;
menu_x_target = global.gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[0] = "Go to menu";

menu_items = array_length_1d(menu);
menu_cursor = 0;


names[2] = "PJ Wallace";
names[1] = "Will Ledbetter";
names[0] = "Credits:";

wonStr = "Congragulations! You Won!";