// wrap around if you dont get them the first time
if (y > room_height) {
    y = -sprite_height;
}

// side to side movement
if ((x > enemy_x + room_width - 800 && row_down = 1) || (x < enemy_x && row_down = -1)) {
    alien_speed *= -1;  // reverse direction
    y += 60;  // down one row
	row_down *= -1;
	obj_controller.row_update = false;
} else {
	// move sans down
	x += direction * alien_speed;
}

alarm[0] = 120;