if (obj_sans.phase == 0) {
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
} else if (obj_sans.phase == 2) {
	if (keyboard_check(vk_left)) {
	    x -= soul_speed;
	}
	if (keyboard_check(vk_right)) {
	    x += soul_speed;
	} 
	if (keyboard_check(vk_up)) {
	    vspeed -= soul_speed / 2;
	}
	// https://forum.gamemaker.io/index.php?threads/2d-vectors-with-acceleration-friction-and-top-speed.66509/
	
	// battle box bounds
	x = clamp(x, 261, 385);
	y = clamp(y, 270, 394);
	
	if (gravity_enabled) {
	    gravity = 0.4;

	    // Jump (only if on platform)
		if (instance_exists(obj_platform)) {
			if (place_meeting(x, y + 1, obj_platform) && keyboard_check_pressed(vk_up)) {
				vspeed = jump_speed;
			}
		}
	} else {
		gravity = 0;
	}

	// intangible timer
	if (is_intangible) {
	    intangibility_timer -= 1;
	    if (intangibility_timer <= 0) {
	        is_intangible = false;
	    }
	}
}

if (life <= 0) {
    life = 0;				// no negative life
} else if (life < life_max) {
	overheal = 1;
} else if (life > life_max) {
    life = life_max;		// no overhealing
	if(overheal) {
		life_over += life - life_max;	// overhealing amount
		overheal = 0;					// one overheal proc
	}
}