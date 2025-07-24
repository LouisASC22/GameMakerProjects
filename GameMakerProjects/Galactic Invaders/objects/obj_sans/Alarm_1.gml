switch(phase) {
	case 0:
	    var x_pos, y_pos, x_off, y_off, dmg, spr_index, fall_speed, is_glide, glide_speed;
	    switch(subphase) {
	        case 0:
	            if (keyboard_check(vk_left)) {
	                x_pos = obj_soul.x;
	                y_pos = -50;
					x_off = 25;
					y_off = 0;
					dmg = 4;
	                fall_speed = 8;
	                spr_index = spr_bone;
	                create_bones(x_pos, y_pos, x_off, y_off, dmg, spr_index, fall_speed, false, 0);
	            }
	            else if (keyboard_check(vk_right)) {
	                x_pos = obj_soul.x + 50;
	                y_pos = -50;
					x_off = 25;
					y_off = 0;
					dmg = 4;
	                fall_speed = 8;
	                spr_index = spr_bone;
	                create_bones(x_pos, y_pos, x_off, y_off, dmg, spr_index, fall_speed, false, 0);
	            }
	            else {
	                x_pos = obj_soul.x;
	                y_pos = -50;
					x_off = 25;
					y_off = 0;
					dmg = 4;
	                fall_speed = 8;
	                spr_index = spr_bone;
	                create_bones(x_pos, y_pos, x_off, y_off, dmg, spr_index, fall_speed, false, 0);
	            }
	            break;
        
	        case 1:
	            if (keyboard_check(vk_left)) {
	                x_pos = obj_soul.x;
	                y_pos = room_height + 50;
					x_off = 25;
					y_off = 0;
					dmg = 4;
	                fall_speed = -8;
	                spr_index = spr_bone;
	                create_bones(x_pos, y_pos, x_off, y_off, dmg, spr_index, fall_speed, false, 0);
	            }
	            else if (keyboard_check(vk_right)) {
	                x_pos = obj_soul.x + 50;
	                y_pos = room_height + 50;
					x_off = 25;
					y_off = 0;
					dmg = 4;
	                fall_speed = -8;
	                spr_index = spr_bone;
	                create_bones(x_pos, y_pos, x_off, y_off, dmg, spr_index, fall_speed, false, 0);
	            }
	            else {
	                x_pos = obj_soul.x;
	                y_pos = room_height + 50;
					x_off = 25;
					y_off = 0;
					dmg = 4;
	                fall_speed = -8;
	                spr_index = spr_bone;
	                create_bones(x_pos, y_pos, x_off, y_off, dmg, spr_index, fall_speed, false, 0);
	            }
	            break;

	        case 2:
	            if (keyboard_check(vk_up)) {
	                x_pos = -50;
	                y_pos = obj_soul.y - 25;
					x_off = 0;
					y_off = 25;
					dmg = 4;
	                glide_speed = 8;
	                spr_index = spr_bone_h;
	                create_bones(x_pos, y_pos, x_off, y_off, dmg, spr_index, 0, true, glide_speed);
	            }
	            else if (keyboard_check(vk_down)) {
	                x_pos = -50;
	                y_pos = obj_soul.y + 25;
					x_off = 0;
					y_off = 25;
					dmg = 4;
	                glide_speed = 8;
	                spr_index = spr_bone_h;
	                create_bones(x_pos, y_pos, x_off, y_off, dmg, spr_index, 0, true, glide_speed);
	            }
	            else {
	                x_pos = -50;
	                y_pos = obj_soul.y;
					x_off = 0;
					y_off = 25;
					dmg = 4;
	                glide_speed = 8;
	                spr_index = spr_bone_h;
	                create_bones(x_pos, y_pos, x_off, y_off, dmg, spr_index, 0, true, glide_speed);
	            }
	            break;
        
	        case 3:
	            if (keyboard_check(vk_up)) {
	                x_pos = room_width + 50;
	                y_pos = obj_soul.y - 25;
					x_off = 0;
					y_off = 25;
					dmg = 4;
	                glide_speed = -8;
	                spr_index = spr_bone_h;
	                create_bones(x_pos, y_pos, x_off, y_off, dmg, spr_index, 0, true, glide_speed);
	            }
	            else if (keyboard_check(vk_down)) {
	                x_pos = room_width + 50;
	                y_pos = obj_soul.y + 25;
					x_off = 0;
					y_off = 25;
					dmg = 4;
	                glide_speed = -8;
	                spr_index = spr_bone_h;
	                create_bones(x_pos, y_pos, x_off, y_off, dmg, spr_index, 0, true, glide_speed);
	            }
	            else {
	                x_pos = room_width + 50;
	                y_pos = obj_soul.y;
					x_off = 0;
					y_off = 25;
					dmg = 4;
	                glide_speed = -8;
	                spr_index = spr_bone_h;
	                create_bones(x_pos, y_pos, x_off, y_off, dmg, spr_index, 0, true, glide_speed);
	            }
	            break;
		}
		break;
		
	case 1:
	break;
	
	case 2:
		if (barrier_count < 8) {
			var barrier_height = irandom_range(48, 128); // Vary height
			var gap_y = irandom_range(160, 220); // Where the gap between top and bottom is centered

			// TOP barrier (moving down)
			var top_bar = instance_create_layer(-64, gap_y - (barrier_height / 2) - 64, "Instances", obj_bone_long);
			top_bar.direction = 0;  // right
			top_bar.speed = 4;
			top_bar.image_angle = 0;
			top_bar.height = barrier_height;

			// BOTTOM barrier (moving up)
			var bottom_bar = instance_create_layer(-64, gap_y + (barrier_height / 2) + 64, "Instances", obj_bone_long);
			bottom_bar.direction = 0;
			bottom_bar.speed = 4;
			bottom_bar.image_angle = 0;
			bottom_bar.height = barrier_height;

			barrier_count += 1;
			alarm[1] = 60; // wait 1 second before next pair
		} else {
			alarm[0] = 1; // Restart alarm[0] to go to next phase or idle
			phase = 0;
			subphase = 0;
		}
	break;
	// https://forum.gamemaker.io/index.php?threads/moving-platform.117231/
}

if(bone_count < 1) {
	alarm[1] = 30;
	bone_count += 1;
}

// https://forum.gamemaker.io/index.php?threads/how-to-make-3-attack-combo.20807/