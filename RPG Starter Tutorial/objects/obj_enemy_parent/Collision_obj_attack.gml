if(alarm[1] < 0) {
	hp -= other.damage;
	image_blend = c_red;
	
	kb_x = sign(x - other.x); // sign is either -1, 0, or 1
	kb_y = sign(y - other.y);
	alarm[1] = 20;
}