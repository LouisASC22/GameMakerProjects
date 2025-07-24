function generate_maze(xspin, yspin, grid_rows, grid_cols, map_data) {
	var directions = [0, 1, 2, 3]; // 0=top, 1=right, 2=bottom, 3=left
	var directions1 = array_shuffle(directions); // randomize movement
	// https://manual.gamemaker.io/monthly/en/GameMaker_Language/GML_Reference/Variable_Functions/array_shuffle.htm

	var current = map_data[yspin][xspin];
	current.visited = true;
	
	var counter = grid_rows * grid_cols;

	for (var i = 0; i < 4; i++) {
		var dir = directions1[i];
		var nx = xspin;
		var ny = yspin;

		switch (dir) {
		    case 0: 
				ny--; 
				break;
					
		    case 1: 
				nx++; 
				break;
					
		    case 2: 
				ny++; 
				break;
					
		    case 3: 
				nx--; 
				break;
		}
		// https://stackoverflow.com/questions/72578407/procedurally-generating-a-maze-without-cycles
		// https://stackoverflow.com/questions/58406717/how-to-randomly-create-a-maze

		if (nx >= 0 && ny >= 0 && nx < grid_cols && ny < grid_rows) {
		    var neighbor = grid[nx + ny * grid_cols];
		    if (!neighbor.visited) {
		        // knock down wall between current and neighbor
		        if (dir == 0) { 
					current.top = false; 
					neighbor.bottom = false; 
				}
		        if (dir == 1) { 
					current.right = false; 
					neighbor.left = false; 
				}
		        if (dir == 2) { 
					current.bottom = false; 
					neighbor.top = false; 
				}
		        if (dir == 3) { 
					current.left = false; 
					neighbor.right = false; 
				}

		        generate_maze(nx, ny, grid_rows, grid_cols, map_data);
		    }
		}
	}
	
	return map_data;
}