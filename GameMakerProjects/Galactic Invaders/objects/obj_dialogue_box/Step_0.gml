if(instance_exists(obj_sans) && obj_sans.phase == 2) {
	// increase by one every frame
	typ_timer += 1;

	// draws text one character at a time
	if (typ_timer >= typ_speed && text_index < string_length(global.sans_act_text)) {
		var next_char = string_char_at(global.sans_act_text, text_index + 1);
	
		if (next_char = " ") {
			typ_timer = -typ_speed;				// spaces take longer
		} else {
			typ_timer = 0;						// Reset timer
		}
	
	    text_index += 1;					// Move to next character
	    text_cur = string_copy(global.sans_act_text, 1, text_index);	// Update displayed text
		audio_play_sound(SND_TXT1, 1, false);		// talking sound
	} else if (text_index >= string_length(global.sans_act_text) && timeout = 0) {
		alarm[0] = 120;
		timeout = 1;
	}
}