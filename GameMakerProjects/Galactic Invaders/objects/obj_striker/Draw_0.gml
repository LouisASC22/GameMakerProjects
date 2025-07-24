var cx = obj_cueball.x;
var cy = obj_cueball.y;

// Distance between cue ball and where you want the stick to extend
var striker_len = 96 + obj_cueball.shot_pow * 4;  // Length includes charged power
var angle = point_direction(cx, cy, mouse_x, mouse_y);

// Calculate stick position (tail is offset *behind* the cue ball)
var draw_x = cx - lengthdir_x(striker_len, angle); 
var draw_y = cy - lengthdir_y(striker_len, angle); 

var length = 64 + obj_cueball.shot_pow * 4;  // cue stick gets longer with power
draw_sprite_ext(sprite_index, 0, draw_x, draw_y, length / sprite_width, 1, angle, c_white, 1);

// https://forum.gamemaker.io/index.php?threads/how-to-make-a-charge-attack-system.42613/