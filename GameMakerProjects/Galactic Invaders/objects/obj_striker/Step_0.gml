x = obj_cueball.x;
y = obj_cueball.y;
image_angle = 180 + point_direction(x, y, mouse_x, mouse_y);
visible = obj_cueball.shot_ready;

// https://forum.gamemaker.io/index.php?threads/solved-change-sprite-origin-with-code.21642/

// Charge when holding mouse
if (mouse_check_button(mb_left)) {
    charging = true;
    strike_pow = min(strike_pow + 0.5, power_max);  // charge up to max
}

// Fire when released
if (charging && mouse_check_button_released(mb_left)) {
    var angle = image_angle;
    strike_pow = 0;
    charging = false;
}

// https://forum.gamemaker.io/index.php?threads/how-to-make-a-charge-attack-system.42613/