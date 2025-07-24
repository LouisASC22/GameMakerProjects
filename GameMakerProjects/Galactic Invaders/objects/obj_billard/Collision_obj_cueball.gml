
if (other.object_index == obj_billard || other.object_index == obj_cueball) {
    // Simple elastic collision
    var dir = point_direction(other.x, other.y, x, y);
    motion_add(dir, 3);
}