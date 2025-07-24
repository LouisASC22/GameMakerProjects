if(!alarm[0]) {
	var dmg_real = dmg + floor(random(dmg / 2));
	obj_soul.life -= dmg_real;
	// show_message("Current health: " + string(obj_soul.life) + "\nMax Health: " + string(obj_soul.life_max));
	display_health(obj_soul.life, 324, 430, obj_soul.life_max, 402, 430); // current and max health
	display_level(obj_soul.level, 166, 430);	// has to be redone every time because of the way it is
	obj_soul.image_index = 1;
	alarm[0] = 15;		// 15 immunity frames
}