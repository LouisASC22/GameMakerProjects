
if (other.object_index == obj_billard || other.object_index == obj_cueball) {
    // Simple elastic collision
    var dir = point_direction(other.x, other.y, x, y);
    motion_add(dir, 3);
}

// https://forum.gamemaker.io/index.php?threads/2d-vectors-with-acceleration-friction-and-top-speed.66509/