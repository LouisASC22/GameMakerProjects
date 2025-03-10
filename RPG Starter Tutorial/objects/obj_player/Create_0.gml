move_speed = 2; // how fast to move

tilemap = layer_tilemap_get_id("Tiles_Col"); // checks for collisions with this layer

hp = 4; // "max" hp
hp_total = hp * 1.5; // you can overheal
damage = 1;

facing = 0; // holds direction of player when still
