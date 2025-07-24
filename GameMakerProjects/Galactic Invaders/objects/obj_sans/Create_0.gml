phase = 0;

if (room = rm_underdark) {
	// phase = 0;
} if (room = rm_eyeball || room = rm_dialogue) {
	phase = 1;
}
subphase = 0;
bone_count = 0;

// https://manual.gamemaker.io/monthly/en/GameMaker_Language/GML_Reference/Cameras_And_Display/The_Game_Window/window_set_size.htm

if(phase = 0 || phase = 2) {
	head_inst = instance_create_layer(x - 15, y - 50, "Instances_1", obj_sans_head);
	head_inst.image_speed = 0;
	alarm[0] = 240;
	alarm[1] = 0;
} else if(phase = 1) {
	
}

barrier_count = 0;