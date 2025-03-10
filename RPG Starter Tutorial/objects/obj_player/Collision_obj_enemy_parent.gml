if (alarm[0] < 0) { 
	hp -= other.damage;		// taking damage
	alarm[0] = 60;			// immunity frames
	image_blend = c_red;	// turns red briefly to indicate damage
	
	if (hp <= 0) {
		room_restart();
	}
}