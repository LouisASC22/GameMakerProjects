function square_div(start_x, start_y, grid_rows, grid_cols, cell_size, map_data, shape){
	
	var cell_array = [
		[ {}, {}, {}, {} ],
		[ {}, {}, {}, {} ],
		[ {}, {}, {}, {} ],
		[ {}, {}, {}, {} ],
		[ {}, {}, {}, {} ],
		[ {}, {}, {}, {} ]
	];
	
	for (var yspin = 0; yspin < grid_rows; yspin++) {
	    for (var xspin = 0; xspin < grid_cols; xspin++) {
			var newCell = create_cell();
	        cell_array[yspin][xspin] = newCell;
	    }
	}
	
	if (map_data = []) {
		for (var i = 0; i < grid_cols * grid_rows; i++) {
		    map_data[i].top = true;
		    map_data[i].right = true;
		    map_data[i].bottom = true;
		    map_data[i].left = true;
			map_data[i].start = false;
			map_data[i].goal = false;
		    map_data[i].visited = false;
		}
	
		map_data = generate_maze(0, 0, grid_rows, grid_cols, cell_array); // start from top-left
	}
	
	load_level(start_x, start_y, grid_rows, grid_cols, cell_size, map_data, cell_array, shape);
	
	// Top row
	for (var xspin = 0; xspin < grid_cols; xspin++) {
	    var cx = (xspin * cell_size) + start_x;
	    var cy = start_y;
	    var bone = instance_create_layer(cx, cy, "Instances", obj_bone);
	    bone.sprite_index = spr_bone_h;
		bone.image_xscale = cell_size / bone.sprite_width;
	}

	// Bottom row
	for (var xspin = 0; xspin < grid_cols; xspin++) {
	    var cx = (xspin * cell_size) + start_x;
	    var cy = (grid_rows * cell_size) + start_y;
	    var bone = instance_create_layer(cx, cy, "Instances", obj_bone);
	    bone.sprite_index = spr_bone_h;
		bone.image_xscale = cell_size / bone.sprite_width;
	}

	// Left column
	for (var yspin = 0; yspin < grid_rows; yspin++) {
	    var cx = start_x;
	    var cy = (yspin * cell_size) + start_y;
	    var bone = instance_create_layer(cx, cy, "Instances", obj_bone);
	    bone.sprite_index = spr_bone;
		bone.image_yscale = cell_size / bone.sprite_height;
	}

	// Right column
	for (var yspin = 0; yspin < grid_rows; yspin++) {
	    var cx = (grid_cols * cell_size) + start_x;
	    var cy = (yspin * cell_size) + start_y;
	    var bone = instance_create_layer(cx, cy, "Instances", obj_bone);
	    bone.sprite_index = spr_bone;
		bone.image_yscale = cell_size / bone.sprite_height;
	}
	
	
	
	// instance_create_layer(start_x, start_y, "Instances_1", obj_golfball);

	var hole_x = (grid_cols - 1) * cell_size + cell_size/2 + start_x;
	var hole_y = (grid_rows - 1) * cell_size + cell_size/2 + start_y;
	// instance_create_layer(hole_x, hole_y, "Instances_1", obj_golfhole);

}

// https://stackoverflow.com/questions/7754307/break-up-a-square-or-rectangle-into-a-large-number-of-randomly-sized-squares-or