<<<<<<< HEAD
if (alarm[1] >= 0) { // alarm will be -1 when it is inactive
	target_x = x + kb_x; // sends the enemy backward when it is hit
	target_y = y + kb_y;
}

=======
>>>>>>> 7977070 (Initial commit)
var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);