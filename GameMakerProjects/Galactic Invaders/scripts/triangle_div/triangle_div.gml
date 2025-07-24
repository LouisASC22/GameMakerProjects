function triangle_div(start_x, start_y, grid_rows, grid_cols, cell_size, grid_input){
	var h = cell_size * sqrt(3) / 2;
    var x1, y1, x2, y2, x3, y3;

    for (var yspin = 0; yspin < rows; yspin++) {
        var y_offset = start_y + yspin * h;

        for (var xspin = 0; xspin < cols; xspin++) {
            var x_offset = start_x + xspin * s;

            var is_upright = (xspin + yspin) % 2 == 1;

            if (is_upright) {
                // upright triangle
                x1 = x_offset;
                y1 = y_offset + h;
                x2 = x_offset + s / 2;
                y2 = y_offset;
                x3 = x_offset + s;
                y3 = y_offset + h;
            } else {
                // inverted triangle
                x1 = x_offset;
                y1 = y_offset;
                x2 = x_offset + s / 2;
                y2 = y_offset + h;
                x3 = x_offset + s;
                y3 = y_offset;
            }
			
// https://www.reddit.com/r/gamemaker/comments/s49s0e/what_is_a_good_way_to_make_a_hexagonal_grid_system/

            var tri = instance_create_layer(x_offset + s / 2, y_offset + h / 2, "Instances", obj_triangle_tile);
            tri.p1 = [x1, y1];
            tri.p2 = [x2, y2];
            tri.p3 = [x3, y3];
            tri.upright = is_upright;

            // Create wall objects on the sides
            if (tri_has_wall(tri, "left")) {
                instance_create_layer((x1 + x2)/2, (y1 + y2)/2, "Instances", obj_bone);
            }
            if (tri_has_wall(tri, "right")) {
                instance_create_layer((x2 + x3)/2, (y2 + y3)/2, "Instances", obj_bone);
            }
            if (tri_has_wall(tri, "base")) {
                instance_create_layer((x3 + x1)/2, (y3 + y1)/2, "Instances", obj_bone);
            }
        }
    }
}

// https://stackoverflow.com/questions/28552505/tiling-a-triangular-grid

/* A tile function that make triangular tiles. 
The tiles will be equilateral, and they will be 
laid out in such a way that 6 of them form a hexagon. 
The function will take the same parameters as the previous 
square_div function, where the starting coordinates will 
refer to the leftmost vertex of the top left inverted 
triangle. The cell width will refer to the side length 
of the triangle. The second row will begin with a triangle 
whose topmost vertex is at the same point as the 
bottommost vertex of the first row's first triangle. 
As such, the leftmost vertex of the second row will be 
at the same x value as the leftmost vertex of the first 
row. Rows will be constructed with pairs of upright and 
inverted triangles, where the number of cells in a row 
refers to the total number of single triangles. There 
will always be an even number of triangles in a row. 
Walls may be generated along any side of a triangle. 
From each cell, there will be three options for other 
cells to travel to. Left, right, and either up or down. 
A character cannot travel through a vertex, but they can 
travel through the meeting of two sides. */