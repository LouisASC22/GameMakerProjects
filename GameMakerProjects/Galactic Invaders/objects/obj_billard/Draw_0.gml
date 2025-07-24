draw_self();
if (instance_exists(obj_billard)) {
    with (obj_billard) {
        if (id != other.id) {
            draw_line_width(x, y, other.x, other.y, 1);
        }
    }
}