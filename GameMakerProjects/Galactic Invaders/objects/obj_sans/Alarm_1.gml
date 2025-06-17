if (phase = 0 && subphase = 0) {
	if (keyboard_check(vk_left)) {
		var bone1 = instance_create_layer(obj_soul.x, -50, "Instances_1", obj_fall_bone);
		var bone2 = instance_create_layer(obj_soul.x - 50, -50, "Instances_1", obj_fall_bone);
		bone1.fall_speed = 8;
		bone2.fall_speed = 8;
		bone1.sprite_index = spr_bone;
		bone2.sprite_index = spr_bone;
	}
	else if (keyboard_check(vk_right)) {
		var bone1 = instance_create_layer(obj_soul.x, -50, "Instances_1", obj_fall_bone);
		var bone2 = instance_create_layer(obj_soul.x + 50, -50, "Instances_1", obj_fall_bone);
		bone1.fall_speed = 8;
		bone2.fall_speed = 8;
		bone1.sprite_index = spr_bone;
		bone2.sprite_index = spr_bone;
	}
	else {
		var bone1 = instance_create_layer(obj_soul.x - 25, -50, "Instances_1", obj_fall_bone);
		var bone2 = instance_create_layer(obj_soul.x + 25, -50, "Instances_1", obj_fall_bone);
		bone1.fall_speed = 8;
		bone2.fall_speed = 8;
		bone1.sprite_index = spr_bone;
		bone2.sprite_index = spr_bone;
	}
} else if (phase = 0 && subphase = 1) {
	if (keyboard_check(vk_left)) {
		var bone1 = instance_create_layer(obj_soul.x, room_height + 50, "Instances_1", obj_fall_bone);
		var bone2 = instance_create_layer(obj_soul.x - 50, room_height + 50, "Instances_1", obj_fall_bone);
		bone1.fall_speed = -8;
		bone2.fall_speed = -8;
		bone1.sprite_index = spr_bone;
		bone2.sprite_index = spr_bone;
	}
	else if (keyboard_check(vk_right)) {
		var bone1 = instance_create_layer(obj_soul.x, room_height + 50, "Instances_1", obj_fall_bone);
		var bone2 = instance_create_layer(obj_soul.x + 50, room_height + 50, "Instances_1", obj_fall_bone);
		bone1.fall_speed = -8;
		bone2.fall_speed = -8;
		bone1.sprite_index = spr_bone;
		bone2.sprite_index = spr_bone;
	}
	else {
		var bone1 = instance_create_layer(obj_soul.x - 25, room_height + 50, "Instances_1", obj_fall_bone);
		var bone2 = instance_create_layer(obj_soul.x + 25, room_height + 50, "Instances_1", obj_fall_bone);
		bone1.fall_speed = -8;
		bone2.fall_speed = -8;
		bone1.sprite_index = spr_bone;
		bone2.sprite_index = spr_bone;
	}
} else if (phase = 0 && subphase = 2) {
	if (keyboard_check(vk_up)) {
		var bone1 = instance_create_layer(-50, obj_soul.y, "Instances_1", obj_fall_bone);
		var bone2 = instance_create_layer(-50, obj_soul.y - 50, "Instances_1", obj_fall_bone);
		bone1.glide_speed = 8;
		bone2.glide_speed = 8;
		bone1.sprite_index = spr_bone_h;
		bone2.sprite_index = spr_bone_h;
	}
	else if (keyboard_check(vk_down)) {
		var bone1 = instance_create_layer(-50, obj_soul.y, "Instances_1", obj_fall_bone);
		var bone2 = instance_create_layer(-50, obj_soul.y + 50, "Instances_1", obj_fall_bone);
		bone1.glide_speed = 8;
		bone2.glide_speed = 8;
		bone1.sprite_index = spr_bone_h;
		bone2.sprite_index = spr_bone_h;
	}
	else {
		var bone1 = instance_create_layer(-50, obj_soul.y - 25, "Instances_1", obj_fall_bone);
		var bone2 = instance_create_layer(-50, obj_soul.y + 25, "Instances_1", obj_fall_bone);
		bone1.glide_speed = 8;
		bone2.glide_speed = 8;
		bone1.sprite_index = spr_bone_h;
		bone2.sprite_index = spr_bone_h;
	}
} else if (phase = 0 && subphase = 3) {
	if (keyboard_check(vk_up)) {
		var bone1 = instance_create_layer(room_width + 50, obj_soul.y, "Instances_1", obj_fall_bone);
		var bone2 = instance_create_layer(room_width + 50, obj_soul.y - 50, "Instances_1", obj_fall_bone);
		bone1.glide_speed = -8;
		bone2.glide_speed = -8;
		bone1.sprite_index = spr_bone_h;
		bone2.sprite_index = spr_bone_h;
	}
	else if (keyboard_check(vk_down)) {
		var bone1 = instance_create_layer(room_width + 50, obj_soul.y, "Instances_1", obj_fall_bone);
		var bone2 = instance_create_layer(room_width + 50, obj_soul.y + 50, "Instances_1", obj_fall_bone);
		bone1.glide_speed = -8;
		bone2.glide_speed = -8;
		bone1.sprite_index = spr_bone_h;
		bone2.sprite_index = spr_bone_h;
	}
	else {
		var bone1 = instance_create_layer(room_width + 50, obj_soul.y - 25, "Instances_1", obj_fall_bone);
		var bone2 = instance_create_layer(room_width + 50, obj_soul.y + 25, "Instances_1", obj_fall_bone);
		bone1.glide_speed = -8;
		bone2.glide_speed = -8;
		bone1.sprite_index = spr_bone_h;
		bone2.sprite_index = spr_bone_h;
	}
}

if(bone_count < 1) {
	alarm[1] = 30;
	bone_count += 1;
}

// https://forum.gamemaker.io/index.php?threads/how-to-make-3-attack-combo.20807/