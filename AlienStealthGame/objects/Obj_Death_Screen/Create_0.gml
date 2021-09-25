gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[1] = "Continue";
menu[0] = "Return to Menu";

menu_items = array_length_1d(menu);
menu_cursor = 1;

transitionID = instance_create_layer(0, 0,  "Instances", Obj_Transition);