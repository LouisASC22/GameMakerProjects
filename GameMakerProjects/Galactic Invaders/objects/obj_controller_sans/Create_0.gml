if(room = rm_underdark || room = rm_eyeball) {
	
	if(instance_exists(obj_soul)) {
		display_health(obj_soul.life, 324, 430, obj_soul.life_max, 402, 430); // current and max health
		display_level(obj_soul.level, 166, 430);
	}

	button_fight = instance_create_layer(23, 460, "Instances", obj_buttons);
	button_fight.image_index = 0;
	button_fight.image_speed = 0;
	button_fight.button_id = 0;

	button_act = instance_create_layer(189, 460, "Instances", obj_buttons);
	button_act.image_index = 1;
	button_act.image_speed = 0;
	button_act.button_id = 1;

	button_item = instance_create_layer(361, 460, "Instances", obj_buttons);
	button_item.image_index = 2;
	button_item.image_speed = 0;
	button_item.button_id = 2;

	button_mercy = instance_create_layer(528, 460, "Instances", obj_buttons);
	button_mercy.image_index = 3;
	button_mercy.image_speed = 0;
	button_mercy.button_id = 3;
	
	// https://forum.gamemaker.io/index.php?threads/convert-to-frames-separation.88089/
} else if (room = rm_dialogue) {
	big_head = instance_create_layer(110, 342, "Instances", obj_sans_head);
	big_head.image_xscale = 2.7;
	big_head.image_yscale = 2.7;
	big_head.image_index = 3;
	big_head.image_speed = 0;
	
	dialogue_box = instance_create_layer(73, 306, "Instances", obj_dialogue_box);
	dialogue_box.image_xscale *= 1.8;
	dialogue_box.image_yscale *= 1.8;
		
} else if (room = rm_cueball) {
	billard_table = instance_create_layer(159, 22, "Instances", obj_long_box);
	billard_table.image_xscale *= 1.2;
	billard_table.image_yscale *= 6;
	
	cueball = instance_create_layer(323, 64, "Instances_1", obj_cueball);
	
	striker = instance_create_layer(323, 64, "Instances_1", obj_striker);
	
	var start_x = 290;
	var start_y = 310;
	var ball_spacing = 32;  // spacing between centers

	var ball_count = 0;

	// Triangle rows (1 to 4)
	for (var row = 0; row < 1; row++) {
	    for (var col = 0; col <= row; col++) {
	        var bx = start_x + row * ball_spacing;
	        var by = start_y - (row * ball_spacing / 2) + col * ball_spacing;
        
	        var new_ball = instance_create_layer(by, bx, "Instances_1", obj_billard); // x is vertical here

	        // expressions to tell them apart
	        new_ball.image_index = ball_count;
	        ball_count++;
	    } // for col
	} // for row
	
	var goal_topleft = instance_create_layer(243, 22, "Instances_1", obj_platform);
	goal_topleft.image_angle += 225;
	
	var goal_topright = instance_create_layer(509, 106, "Instances_1", obj_platform);
	goal_topright.image_angle += 135;
	
	var goal_bottomright = instance_create_layer(425, 490, "Instances_1", obj_platform);
	goal_bottomright.image_angle += 45;
	
	var goal_bottomleft = instance_create_layer(159, 406, "Instances_1", obj_platform);
	goal_bottomleft.image_angle += 315;
	
	global.billard_score = 0;
	global.billard_remaining = 10;
	global.explosions_enabled = false;
	
	
} if (room = rm_golf) {
	golf_phase = 1;
	global.explosions_enabled = true;
	global.golf_level = 0;
	
	if (golf_phase == 0) {
		golf_table = instance_create_layer(159, 22, "Instances", obj_long_box);
		golf_table.image_xscale *= 1.2;
		golf_table.image_yscale *= 6;
	
		golfball = instance_create_layer(323, 64, "Instances_1", obj_golfball);
		
	} else if (golf_phase == 1) {
		if (global.golf_level == 0) {
		    // Generate level buttons
		    for (var i = 1; i < 6; i++) {
		        var bx = 245;
		        var by = 40 + i * 60;

		        var b = instance_create_layer(bx, by, "Instances", obj_golfbutton);
		        b.level_index = i; // which level to load when clicked
				b.image_speed = 0;
				b.image_index = i - 1;
		    }
		}
	} 
	
	
	// https://gamemaker.io/en/tutorials/change-sprite-size-colour-rotation
	
} // room select

text = "";

// window_set_size(1336, 1024);

