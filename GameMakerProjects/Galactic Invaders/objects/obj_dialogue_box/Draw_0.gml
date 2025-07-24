if(instance_exists(obj_sans) && (obj_sans.phase == 2 || room == rm_dialogue)) {

	draw_self();
	draw_text_ext_transformed_color(x + 185, y + 55, text_cur, 50, 500, 3, 3, 0, c_white, c_white, c_white, c_white, 1);
}