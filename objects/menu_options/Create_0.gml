gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25;
menu_font = menu_options_font;
menu_item_height = font_get_size(menu_options_font);
menu_committed = -1;
menu_control = true;

menu[1] = "Player 1";
menu[0] = "Player 2";

menu_items = array_length(menu);
menu_cursor = 1;