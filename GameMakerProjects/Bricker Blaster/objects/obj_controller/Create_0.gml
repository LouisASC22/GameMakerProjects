window_set_size(1028, 1028); // maybe adjust this later
display_set_gui_size(128, 128);

var colors = [c_red, c_orange, c_yellow, c_green, c_blue, c_purple];

for (var i = 0; i < 10; i++) {
    for (var j = 0; j < 6; j++) {
        var insta = instance_create_layer(6 + i*12, 6 + j*8, "Instances", obj_brick);
		insta.brick_color = colors[j];
    }
}

// https://gamemaker.io/en/blog/remade-brick-breaker-template