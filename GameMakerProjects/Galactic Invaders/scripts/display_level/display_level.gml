function display_level(lv, x_pos, y_pos){
	
	while(instance_exists(obj_numbers)) {
		instance_destroy(obj_numbers)
	}
	
	var str_lv = string(lv);
	var ones = 0;
    var tens = 0;
	
	if (lv) {
        ones = lv % 10;
        tens = floor(lv / 10);
	}
	
	var digit_instance_1 = instance_create_layer(x_pos, y_pos, "Instances_1", obj_numbers);
    digit_instance_1.image_index = tens; 
	digit_instance_1.image_speed = 0;
	
	var digit_instance_2 = instance_create_layer(x_pos + 18, y_pos, "Instances_1", obj_numbers);
    digit_instance_2.image_index = ones; 
	digit_instance_2.image_speed = 0;
}