if (phase == 0) {
    switch(subphase) {
        case 0:
            sprite_index = spr_sans_up;
            image_speed = 1;
            alarm[0] = 240;
            bone_count = 0;
            subphase = 1;
            break;
        
        case 1:
            sprite_index = spr_sans_right;
            image_speed = 1;
            alarm[0] = 240;
            bone_count = 0;
            subphase = 2;
            break;
        
        case 2:
            sprite_index = spr_sans_left;
            image_speed = 1;
            alarm[0] = 240;
            bone_count = 0;
            subphase = 3;
            break;
        
        case 3:
            sprite_index = spr_sans_down;
            image_speed = 1;
            alarm[0] = 240;
            bone_count = 0;
            subphase = 0;
            break;
    }
	
	phase = 2;
} if (phase = 2) {
	sprite_index = spr_sans_down;
	alarm[0] = 480;
    obj_soul.sprite_index = spr_soul_blue;
	obj_soul.image_index = 6;
	if (instance_exists(head_inst)) {
		head_inst.image_index = 3
	}
    obj_soul.gravity = 0.5; // enable gravity for obj_soul
    barrier_count = 0;
    alarm[1] = 0; // immediately start sending in barriers
}

