vertical_movement += _gravity;

if(is_dead == true) {
	y += vertical_movement;
	
	sprite_index = spr_Character_Dead;
	
	return;
}

if(keyboard_check_pressed(vk_anykey)) {
	if(is_flapping == false) {
		is_flapping = true;
		
		image_index = 0;
		
		vertical_movement = _fly_power;
		
	}
}

if(is_flapping == true) {
	image_speed = 1;
	
	if(floor(image_index) >= image_number -1) {
		is_flapping = false;
		image_index = 0;
	}
} else {
	image_speed = 0;
	image_index = 0;
}

vertical_movement = clamp(vertical_movement, -vertical_max, vertical_max);

y += vertical_movement;