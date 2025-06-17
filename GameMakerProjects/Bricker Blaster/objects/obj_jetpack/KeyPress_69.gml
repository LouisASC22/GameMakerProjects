 global.explosions_enabled = !global.explosions_enabled;

    // Animation is either moving or not
    if (global.explosions_enabled) {
        image_speed = 1;
    } else {
        image_index = 0;
        image_speed = 0;
    }