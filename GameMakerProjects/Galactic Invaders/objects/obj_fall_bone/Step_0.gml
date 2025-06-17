y += fall_speed;  // fall down
x += glide_speed; // move sideways

// destroy after falling
if ((fall_speed > 0 && y > room_height) || (fall_speed < 0 && y < 0)) {
    instance_destroy();
}

if ((glide_speed > 0 && x > room_width) || (glide_speed < 0 && x < 0)) {
    instance_destroy();
}