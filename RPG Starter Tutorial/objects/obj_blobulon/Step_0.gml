<<<<<<< HEAD
if (alarm[1] >= 0) { // alarm will be -1 when it is inactive
	target_x = x + kb_x; // sends the enemy backward when it is hit
	target_y = y + kb_y;
}

=======
>>>>>>> 7977070 (Initial commit)
// Update jump time
jump_time -= 1;

// Move towards the player
var dir_to_player = point_direction(x, y, target.x, target.y);  // Direction to the player
move_towards_point(target.x, target.y, speed);  // Move towards the player

// Check if the slime should jump (teleport)
if (jump_time <= 0)
{
    jump_time = jump_interval;  // Reset jump timer
    jump_interval = random_range(90, 180);  // Randomize next jump interval
    var jump_dist = random_range(32, 64);  // How far to jump
    var jump_dir = random_range(dir_to_player - 45, dir_to_player + 45);  // Randomize jump direction slightly

    // Teleport the slime to a random position near its current position
    x += lengthdir_x(jump_dist, jump_dir);
    y += lengthdir_y(jump_dist, jump_dir);
}

// Handle bouncing off walls
if (place_meeting(x + lengthdir_x(speed, dir_to_player), y + lengthdir_y(speed, dir_to_player), obj_wall))
{
    // Bounce in the opposite direction
    bounce_direction = dir_to_player + 180;  // Reverse direction
    move_towards_point(x + lengthdir_x(bounce_speed, bounce_direction), y + lengthdir_y(bounce_speed, bounce_direction), bounce_speed);
}

// Update sprite based on movement
if (speed > 0)
{
    sprite_index = spr_blobulon_walking;  // Replace with your moving sprite
}
else
{
    sprite_index = spr_blobulon_idle;  // Replace with your idle sprite
}

var tile_size = 16;  // Set to the size of your tiles (adjust if different)
var tile_x = floor(x / tile_size);  // Convert world coordinates to tile coordinates
var tile_y = floor(y / tile_size);

// Check if the slime is colliding with a solid tile in the tilemap
var tile_at_position = tilemap_get_at_position(tilemap, tile_x, tile_y);  // Get the tile ID at the position

// Replace with the tile index for solid tiles (assuming 1 is solid and 0 is not)
if (tile_at_position != 0)  // If the tile is solid
{
    // Determine the direction to bounce (reverse movement direction)
    var dir_to_wall = point_direction(x, y, x + lengthdir_x(speed, dir_to_player), y + lengthdir_y(speed, dir_to_player));
    bounce_direction = dir_to_wall + 180;  // Reverse direction for bounce

    // Move the slime away from the solid tile
    move_towards_point(x + lengthdir_x(bounce_speed, bounce_direction), y + lengthdir_y(bounce_speed, bounce_direction), bounce_speed);
}