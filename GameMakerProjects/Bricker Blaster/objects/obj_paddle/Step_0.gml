// Movement
if (keyboard_check(vk_left)) x -= 2;
if (keyboard_check(vk_right)) x += 2;
if (keyboard_check(vk_up)) y -= 2;
if (keyboard_check(vk_down)) y += 2;

// https://stackoverflow.com/questions/35728199/moving-a-sprite-to-the-other-side-when-a-sprite-moves-off-screen-pygame

// Keep paddle on screen
x = clamp(x, 0, room_width - sprite_width);
move_wrap (true, true, 4);