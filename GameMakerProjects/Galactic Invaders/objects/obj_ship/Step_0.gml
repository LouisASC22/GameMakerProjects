// movement
if (keyboard_check(vk_left)) {
    x -= ship_speed;
}
if (keyboard_check(vk_right)) {
    x += ship_speed;
}

// stay within the screen bounds
if (x < 0) { x = room_width; }
if (x > room_width) { x = 0; }

// https://manual.gamemaker.io/monthly/en/GameMaker_Language/GML_Reference/Asset_Management/Sprites/Sprite_Instance_Variables/image_index.htm