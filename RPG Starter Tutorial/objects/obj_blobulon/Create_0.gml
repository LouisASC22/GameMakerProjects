// Initialize enemy behavior
target = obj_player;  // Set target to the player object
speed = 2;  // Normal speed towards the player
bounce_speed = 4;  // Speed when bouncing off walls
jump_time = 0;  // Timer for jump behavior
jump_interval = random_range(90, 180);  // Time interval for jumping (teleport)
bounce_direction = 0;  // Direction to bounce off walls

// Set initial sprite
sprite_index = spr_blobulon_idle;  // Replace with your idle sprite

<<<<<<< HEAD
tilemap = layer_tilemap_get_id("Tiles_Col");

// Knockback
kb_x = 0;
kb_y = 0;

target_x = x;
target_y = y;
=======
tilemap = layer_tilemap_get_id("Tiles_Col");
>>>>>>> 7977070 (Initial commit)
