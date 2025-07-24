function load_level(start_x, start_y, grid_rows, grid_cols, cell_size, map_data, cell_array, shape) {
	if (shape == "square") {
		show_debug_message("Rows: " + string(array_length(map_data)) + ", Cols: " + string(array_length(map_data[0])));
		
		if (!is_array(map_data) || !array_length(map_data)) {
		    show_debug_message("map_data is not a proper 2D array!");
		}
		
	    for (var yspin = 0; yspin < grid_rows; yspin++) {
			
			if (!array_length(map_data[yspin])) {
			    show_debug_message("Row " + string(yspin) + " is not valid!");
			}
			
	        for (var xspin = 0; xspin < grid_cols; xspin++) {
	            var cell = cell_array[yspin][xspin]; // assuming grid is 2D array
	            var raw = is_struct(map_data[yspin][xspin]) ? map_data[yspin][xspin] : {};
				
				// https://stackoverflow.com/questions/4000169/getting-the-array-length-of-a-2d-array-in-java
				
				var src = {
				    top:    (is_struct(raw) && variable_instance_exists(raw, "top"))    ? raw.top    : false,
				    right:  (is_struct(raw) && variable_instance_exists(raw, "right"))  ? raw.right  : false,
				    bottom: (is_struct(raw) && variable_instance_exists(raw, "bottom")) ? raw.bottom : false,
				    left:   (is_struct(raw) && variable_instance_exists(raw, "left"))   ? raw.left   : false,
				    start:  (is_struct(raw) && variable_instance_exists(raw, "start"))  ? raw.start  : false,
				    goal:   (is_struct(raw) && variable_instance_exists(raw, "goal"))   ? raw.goal   : false,
				    visited: false
				};
				
				// https://stackoverflow.com/questions/4176409/finding-2d-array-length?rq=3
				
	            cell.top    = src.top    ?? false;
				cell.right  = src.right  ?? false;
				cell.bottom = src.bottom ?? false;
				cell.left   = src.left   ?? false;
				cell.start  = src.start  ?? false;
				cell.goal   = src.goal   ?? false;
	            cell.visited = false;
				
				// https://stackoverflow.com/questions/7284666/identifying-length-in-two-dimensional-array?rq=3
				
				if (cell.top) {	// top
					var cx = (xspin * cell_size) + start_x;
				    var cy = (yspin * cell_size) + start_y;
				    var bone = instance_create_layer(cx, cy, "Instances", obj_bone);
				    bone.sprite_index = spr_bone_h;
					bone.image_xscale = cell_size / bone.sprite_width;
				}
				
				if (cell.left) {	// left
					var cx = start_x;
				    var cy = (yspin * cell_size) + start_y;
				    var bone = instance_create_layer(cx, cy, "Instances", obj_bone);
				    bone.sprite_index = spr_bone;
					bone.image_yscale = cell_size / bone.sprite_height;
				}
				
				if (cell.bottom) {	// bottom
					var cx = (xspin * cell_size) + start_x;
				    var cy = ((yspin + 1) * cell_size) + start_y;
				    var bone = instance_create_layer(cx, cy, "Instances", obj_bone);
				    bone.sprite_index = spr_bone_h;
					bone.image_xscale = cell_size / bone.sprite_width;
				}
				
				if (cell.right) {	// right
					var cx = ((xspin + 1) * cell_size) + start_x;
				    var cy = (yspin * cell_size) + start_y;
				    var bone = instance_create_layer(cx, cy, "Instances", obj_bone);
				    bone.sprite_index = spr_bone;
					bone.image_yscale = cell_size / bone.sprite_height;
				}
				
	            if (cell.start) { // start
	                instance_create_layer(start_x + xspin * cell_size + cell_size/2, start_y + yspin * cell_size + cell_size/2, "Instances_1", obj_golfball);
	            }
				
	            if (cell.goal) {	// end
	                instance_create_layer(start_x + xspin * cell_size + cell_size/2, start_y + yspin * cell_size + cell_size/2, "Instances_1", obj_golfhole);
	            }
	        }
	    }
	}
}

// https://stackoverflow.com/questions/38502/whats-a-good-algorithm-to-generate-a-maze

/* For square, the cells of the grid are iterated through. Each
cell is pulled into a pointer, and if it exists then it is loaded into
an output aray of all existing cells. If it does not exist, the cells 
are set to blank. The starting and ending cells are populated with 
the golfball and golfhole respectively. */