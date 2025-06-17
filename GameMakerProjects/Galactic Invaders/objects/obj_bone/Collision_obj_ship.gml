instance_destroy();
instance_destroy(other);  // destroy ship on hit
global.lives -= 1;
if(global.lives = 0) {
	show_message("You Lose!");
	game_restart();
} else {
	instance_create_layer(room_width / 2, room_height - 140, "Instances", obj_ship);
}