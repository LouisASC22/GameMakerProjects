// Initialize movement parameters
speed = 2;  // Movement speed
direction = random_range(0, 360);  // Random initial direction
hop_time = 0;  // Time until next hop
hop_interval = random_range(60, 180);  // Interval between hops (in frames)

// Initialize the sprite animation or idle behavior
sprite_index = s_enemy_idle;  // Replace with your idle sprite