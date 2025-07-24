angle = point_direction(x, y, mouse_x, mouse_y);
shot_pow = point_distance(x, y, mouse_x, mouse_y) * 0.2;

if (shot_ready && mouse_check_button_pressed(mb_left)) {
    motion_add(angle, shot_pow);
    shot_ready = false;
} else if (mouse_check_button_pressed(mb_right)) {
	room_restart();
}


var len = max(sqrt(sqr(xinput) + sqr(yinput)), 1); //Need to use max() to avoid division by 0
xinput /= len;
yinput /= len;

//Accelerate
xspd -= acc * xinput;
yspd -= acc * yinput;

var spd = sqrt(sqr(xspd) + sqr(yspd));
var maxSpd = 15;
if (spd > maxSpd)
{
    var limiter = maxSpd / spd;
    xspd *= limiter;
    yspd *= limiter;
}

// https://forum.gamemaker.io/index.php?threads/2d-vectors-with-acceleration-friction-and-top-speed.66509/

// slow down
speed *= (1 - friction);

// Bounce off walls (table edges)
if (x < 159 || x > 509 - sprite_width) {
    direction = 180 - direction;
    x = clamp(x, 32, room_width - 32); // prevent sticking
}

if (y < 22 || y > 490 - sprite_height) {
    direction = 360 - direction;
    y = clamp(y, 32, room_height - 32); // prevent sticking
}

// https://forum.gamemaker.io/index.php?threads/solved-how-to-make-an-object-bounce.100312/

if (speed = 0) {
	shot_ready = true;
}	// prepares another shot once the cueball stops