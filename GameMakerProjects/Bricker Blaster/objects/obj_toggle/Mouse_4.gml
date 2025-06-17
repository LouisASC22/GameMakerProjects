

// https://manual.gamemaker.io/monthly/en/GameMaker_Language/GML_Reference/Game_Input/Device_Input/Device_Input.htm

var label = global.explosions_enabled ? "EXPLOSIONS: ON" : "EXPLOSIONS: OFF";

var text_width = string_width(label) * 0.5;
var text_height = string_height(label) * 0.5;

var margin_width = 15;
var margin_height = 10;

var text_left = display_get_gui_width() - margin_width - text_width;
var text_top = display_get_gui_height() - margin_height - text_height;
var text_right = display_get_gui_width() - margin_width;
var text_bottom = display_get_gui_height() - margin_height;

if (mouse_x > text_left && mouse_x < text_right && mouse_y > text_top && mouse_y < text_bottom) {
    global.explosions_enabled = !global.explosions_enabled;
}

// https://forum.gamemaker.io/index.php?threads/how-to-simulate-global-mouse-click.68344/