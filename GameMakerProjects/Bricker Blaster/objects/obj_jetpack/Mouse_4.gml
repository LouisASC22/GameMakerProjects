if (point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)) {
    global.explosions_enabled = !global.explosions_enabled;

    // Animation is either moving or not
    if (global.explosions_enabled) {
        image_speed = 1;
    } else {
        image_index = 0;
        image_speed = 0;
    }
}

// https://forum.gamemaker.io/index.php?threads/scripting-buttons-using-object-variable-definitions.102604/

