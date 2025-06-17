// rank and file formation
alien_count = 50;
var rows = 5;
var columns = 10;
var spacing = 60;  // space between sans heads

for (var i = 0; i < columns; i++) {
    for (var j = 0; j < rows; j++) {
        var enemy = instance_create_layer(100 + i * spacing, 100 + j * spacing, "Instances", obj_alien);
		enemy.enemy_x = 100 + i * spacing;
		enemy.enemy_y = 100 + j * spacing;
	}
}

// var enemy = instance_create_layer(700, 100, "Instances", obj_alien);

global.lives = 3;
row_update = true;

instance_create_layer(room_width / 2, room_height - 140, "Instances", obj_ship);