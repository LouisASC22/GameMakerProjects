if (mouse_check_button_pressed(mb_right)) {
		if (room == rm_golf) {
			global.golf_level = 0;
		}
		
		room_restart();
	}