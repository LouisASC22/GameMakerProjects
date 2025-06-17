if(phase = 0 && subphase = 0) {
	sprite_index = spr_sans_up
	image_speed = 1;
	alarm[0] = 240;
	bone_count = 0;
	subphase = 1;
} else if(phase = 0 && subphase = 1) {
	sprite_index = spr_sans_right
	image_speed = 1;
	alarm[0] = 240;
	bone_count = 0;
	subphase = 2;
} else if(phase = 0 && subphase = 2) {
	sprite_index = spr_sans_left
	image_speed = 1;
	alarm[0] = 240;
	bone_count = 0;
	subphase = 3;
} else if(phase = 0 && subphase = 3) {
	sprite_index = spr_sans_down
	image_speed = 1;
	alarm[0] = 240;
	bone_count = 0;
	subphase = 0;
}

