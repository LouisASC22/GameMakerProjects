if (phase == 0) {
	sprite_index = spr_sans_static;
	image_index = 0;
	image_speed = 0;
	
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
} else if ( phase == 2) {
	sprite_index = spr_sans_static;
}

function create_bones(x_pos, y_pos, x_off, y_off, dmg, spr_index, fall_speed, is_glide=false, glide_speed=0) {
    var bone1 = instance_create_layer(x_pos - x_off, y_pos - y_off, "Instances_1", obj_fall_bone);
    var bone2 = instance_create_layer(x_pos + x_off, y_pos + y_off, "Instances_1", obj_fall_bone);
    
    bone1.sprite_index = spr_index;
	bone1.dmg = dmg;
	bone1.glide_speed = glide_speed;
	bone1.fall_speed = fall_speed;
	
    bone2.sprite_index = spr_index;
	bone2.dmg = dmg;
	bone2.glide_speed = glide_speed;
	bone2.fall_speed = fall_speed;
}

// https://forum.gamemaker.io/index.php?threads/how-to-make-health-amount-carry-through-levels.39203/
	

alarm[1] = 30;