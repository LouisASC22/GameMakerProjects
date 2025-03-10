if(other.is_dead == false) {
	instance_create_depth(room_width / 2, room_height / 2, depth, obj_menu_button_play);
}

other.is_dead = true;