draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_font(-1); // or your custom font

var text = "Score: " + string(floor(global.score));
draw_text(16, 16, text);
draw_text(16, 36, "Lives: " + string(floor(global.lives)));

// https://forum.gamemaker.io/index.php?threads/how-to-add-a-score.3182/

