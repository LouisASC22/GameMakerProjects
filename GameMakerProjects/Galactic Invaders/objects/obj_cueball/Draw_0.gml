draw_self();
if (instance_exists(obj_cueball)) {
    with (obj_cueball) {
        if (id != other.id) {
            draw_line_width(x, y, other.x, other.y, 1);
        }
    }
}

// https://www.reddit.com/r/gamemaker/comments/5oy4vq/help_draw_line_between_two_sprites/