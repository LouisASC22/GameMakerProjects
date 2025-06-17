if (collision_point(x, y, obj_alien, false, true)) {
    instance_destroy();  // Destroy the laser
    var enemy = instance_nearest(x, y, obj_alien);
    if (enemy != noone) {
        instance_destroy(enemy);  // Destroy the enemy
    }
	obj_controller.alien_count -= 1;
	score += 20;
}

// https://forum.gamemaker.io/index.php?threads/how-to-shoot-the-closest-enemy.107358/