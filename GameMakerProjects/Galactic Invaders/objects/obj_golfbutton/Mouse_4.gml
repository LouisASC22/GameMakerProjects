global.golf_level = level_index;
while (instance_exists(obj_golfbutton)) {
	instance_destroy(obj_golfbutton);
}

var blank_level = [
	[ {}, {}, {}, {} ],
	[ {}, {}, {}, {} ],
	[ {}, {}, {}, {} ],
	[ {}, {}, {}, {} ],
	[ {}, {}, {}, {} ],
	[ {}, {}, {}, {} ]
];

switch (level_index) {
	case 0: 
		show_debug_message("level 0");
		break;
		
    case 1: 
		show_debug_message("level 1");
		// var golfball = instance_create_layer(323, 64, "Instances_1", obj_golfball);
		// var golfhole = instance_create_layer(290, 380, "Instances_1", obj_golfhole);
		// instance_create_layer(0, 0, "Instances", obj_map_1); 
		var level_1_data = [
			[ {start: true}, {}, {}, {} ],
			[ {}, {}, {}, {} ],
		    [ {}, {}, {}, {} ],
		    [ {}, {}, {}, {} ],
		    [ {}, {}, {}, {} ],
		    [ {}, {}, {}, {goal: true} ]
		];
		// load_level(159, 22, 6, 4, 80, level_1_data, blank_level, "square");
		square_div(159, 22, 6, 4, 80, level_1_data, "square");
		break;
		
    case 2:
		show_debug_message("level 2");
		// instance_create_layer(0, 0, "Instances", obj_map_2); 
		var level_2_data = [
		    [ {}, {}, {}, {} ],
		    [ {}, {}, {}, {} ],
		    [ {}, {right: true}, {}, {} ],
		    [ {}, {right: true}, {}, {} ],
		    [ {}, {right: true}, {}, {} ],
		    [ {goal: true}, {right: true}, {}, {start: true} ]
		];
		// load_level(159, 22, 6, 4, 80, level_2_data, blank_level, "square");
		square_div(159, 22, 6, 4, 80, level_2_data, "square");
		break;
	
	case 3:
		show_debug_message("level 3");
		var level_3_data = [
		    [ {}, {}, {}, {goal: true} ],
		    [ {}, {}, {}, {} ],
		    [ {}, {}, {bottom: true}, {bottom: true} ],
		    [ {}, {}, {}, {} ],
		    [ {}, {}, {}, {} ],
		    [ {}, {}, {}, {start: true} ]
		];
		// load_level(159, 22, 6, 4, 80, level_3_data, blank_level, "square");
		square_div(159, 22, 6, 4, 80, level_3_data, "square");
		break;
		
	case 4:
		show_debug_message("level 4");
		var level_4_data = [
		    [ {}, {}, {}, {} ],
		    [ {}, {}, {}, {} ],
		    [ {start: true}, {right: true}, {}, {goal: true} ],
		    [ {}, {right: true}, {}, {} ],
		    [ {}, {}, {}, {} ],
		    [ {}, {}, {}, {} ]
		];
		// load_level(159, 22, 6, 4, 80, level_4_data, blank_level, "square");
		square_div(159, 22, 6, 4, 80, level_4_data, "square");
		break;
		
	case 5:
		show_debug_message("level 5");
		var level_5_data = [
		    [ {start: true}, {}, {}, {} ],
		    [ {}, {}, {}, {} ],
		    [ {}, {right: true}, {left: true}, {} ],
		    [ {}, {right: true}, {left: true}, {} ],
		    [ {}, {}, {}, {} ],
		    [ {}, {}, {}, {goal: true} ]
		];
		// load_level(159, 22, 6, 4, 80, level_5_data, blank_level, "square");
		square_div(159, 22, 6, 4, 80, level_5_data, "square");
		break;
		
	case 6:
		show_debug_message("computer generated level 6");
		square_div(159, 22, 4, 4, 96, [], "square");
		break;
		
	case 7:
		show_debug_message("reset");
		global.golf_level = 0;
		room_restart();
		
}

// https://www.reddit.com/r/gamemaker/comments/12s275p/trying_to_calculate_ricochet_does_this_make_sense/

var h = instance_create_layer(480, 476, "Instances", obj_golfbutton);
h.image_speed = 0;
h.image_index = 7;
h.level_index = 7;