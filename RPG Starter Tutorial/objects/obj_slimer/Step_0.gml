// Decrease the hop timer
hop_time -= 1;

// If the hop time is up, choose a random new direction and reset the hop timer
if (hop_time <= 0)
{
    hop_time = hop_interval;  // Reset hop time
    hop_interval = random_range(60, 180);  // Randomize next hop interval
    direction = random_range(0, 360);  // Random new direction
}

// Move the enemy in the current direction
move_towards_point(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), speed);

