if (shake > 0) {
    var sx = random_range(-shake, shake);
    var sy = random_range(-shake, shake);
    shake -= 0.5;
    camera_set_view_pos(view_camera[0], sx, sy);
}

// https://gamemaker.io/en/tutorials/coffee-break-tutorials-juicy-screenshake-gm