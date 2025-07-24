function display_health(hp1, x_pos1, y_pos1, hp2, x_pos2, y_pos2){
	while(instance_exists(obj_numbers)) {
		instance_destroy(obj_numbers)
	}
	
	var str_hp = string(hp1);
	var ones1 = 0;
    var tens1 = 0;
	var ones2 = hp2 % 10;
    var tens2 = floor(hp2 / 10);
	if (hp1) {
        ones1 = hp1 % 10;
        tens1 = floor(hp1 / 10);
	}
	
	var digit_instance_1 = instance_create_layer(x_pos1, y_pos1, "Instances_1", obj_numbers);
    digit_instance_1.image_index = tens1; 
	digit_instance_1.image_speed = 0;
	
	var digit_instance_2 = instance_create_layer(x_pos1 + 18, y_pos1, "Instances_1", obj_numbers);
    digit_instance_2.image_index = ones1; 
	digit_instance_2.image_speed = 0;
	
	var digit_instance_3 = instance_create_layer(x_pos2, y_pos2, "Instances_1", obj_numbers);
    digit_instance_3.image_index = tens2; 
	digit_instance_3.image_speed = 0;
	
	var digit_instance_4 = instance_create_layer(x_pos2 + 18, y_pos2, "Instances_1", obj_numbers);
    digit_instance_4.image_index = ones2; 
	digit_instance_4.image_speed = 0;
}