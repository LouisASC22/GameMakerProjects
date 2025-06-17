if (keyboard_check(vk_left)) {
    x -= soul_speed;
}
if (keyboard_check(vk_right)) {
    x += soul_speed;
}
if (keyboard_check(vk_up)) {
    y -= soul_speed;
}
if (keyboard_check(vk_down)) {
    y += soul_speed;
}

// battle box bounds
x = clamp(x, 261, 385);
y = clamp(y, 270, 394);