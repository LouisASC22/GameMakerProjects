shake += 10;
instance_destroy(other);

if (other != self) {
    var dx = other.x - x;
    var dy = other.y - y;
    var dist = point_distance(x, y, other.x, other.y);

    if (dist > 0) {
        // Normalize direction
        var nx = dx / dist;
        var ny = dy / dist;

        // Transfer half of each velocity component along the line of collision
        var impact_x = 1 * (hspeed - other.hspeed);
        var impact_y = 1 * (vspeed - other.vspeed);

        hspeed -= impact_x;
        vspeed -= impact_y;

        // Slight positional separation to prevent overlap sticking
        var overlap = (sprite_width / 2 + other.sprite_width / 2) - dist;
        x -= nx * (overlap / 2);
        y -= ny * (overlap / 2);
    }
}