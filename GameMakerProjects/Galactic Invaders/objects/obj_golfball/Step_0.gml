angle = point_direction(mouse_x, mouse_y, x, y);
shot_pow = point_distance(x, y, mouse_x, mouse_y) * 0.05;

if (shot_ready && mouse_check_button_pressed(mb_left)) {
    motion_add(angle, shot_pow);
    shot_ready = false;
	
	if (global.explosions_enabled) {
		audio_play_sound(snd_break, 1, false);
		var mx = mouse_x;
		var my = mouse_y;
		// var explosion = instance_create_layer(other.x + 4, other.y + 4, "Instances_1", obj_explosion);
		var explosion = instance_create_layer(mx, my, "Instances_1", obj_explosion);
		explosion.explosion_color = c_white;
	}
}

speed *= (1 - friction);

// Bounce off walls (table edges)
if (obj_controller_sans.golf_phase = 0) {
	if (x < 159 || x > 509 - sprite_width) {
	    direction = 180 - direction;
	    x = clamp(x, 32, room_width - 32); // prevent sticking
	}

	if (y < 22 || y > 490 - sprite_height) {
	    direction = 360 - direction;
	    y = clamp(y, 32, room_height - 32); // prevent sticking
	}
}

// https://forum.gamemaker.io/index.php?threads/solved-how-to-make-an-object-bounce.100312/

if (speed = 0 && shot_ready = false) {
	shot_ready = true;
	audio_play_sound(snd_shield, 1, false);
}	// prepares another shot once the cueball stops
