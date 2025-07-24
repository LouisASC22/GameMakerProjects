if (other != self) {
    var dx = other.x - x;
    var dy = other.y - y;
    var dist = point_distance(x, y, other.x, other.y);

    if (dist > 0) {
        // Normalize direction
        var nx = dx / dist;
        var ny = dy / dist;

        // Transfer half of each velocity component along the line of collision
        var impact_x = 0.5 * (xspd - other.hspeed);
        var impact_y = 0.5 * (yspd - other.vspeed);

        xspd -= impact_x;
        yspd -= impact_y;

        other.hspeed += impact_x;
        other.vspeed += impact_y;

        // Slight positional separation to prevent overlap sticking
        var overlap = (sprite_width / 2 + other.sprite_width / 2) - dist;
        x -= nx * (overlap / 2);
        y -= ny * (overlap / 2);
        other.x += nx * (overlap / 2);
        other.y += ny * (overlap / 2);
    }
}