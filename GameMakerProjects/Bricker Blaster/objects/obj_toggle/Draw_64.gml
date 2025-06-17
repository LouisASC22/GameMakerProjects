var label = global.explosions_enabled ? "EXPLOSIONS: ON" : "EXPLOSIONS: OFF";

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(-1);

var margin_width = 15;
var margin_height = 10;

var x_pos = display_get_gui_width() - margin_width;
var y_pos = display_get_gui_height() - margin_height;

draw_text_transformed(x_pos, y_pos, label, 0.5, 0.5, 0);

// https://www.reddit.com/r/gamemaker/comments/7lvytx/how_to_make_a_simple_toggle_switch/
// https://www.reddit.com/r/gamemaker/comments/3n1s65/scripttoggle_switch/

