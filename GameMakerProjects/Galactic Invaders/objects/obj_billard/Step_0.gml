var _hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if _hInput != 0 or _vInput != 0 begin
    hspeed += _hInput * 0.8;
    vspeed += _vInput * 0.8;
end else begin
    hspeed *= 0.8;
    vspeed *= 0.8;
end

// https://forum.gamemaker.io/index.php?threads/consistent-movement-using-hspeed-and-vspeed.93421/

// Bounce off walls (table edges)
if (x < 159 || x > 509 - sprite_width) {
    direction = 180 - direction;
    x = clamp(x, 32, room_width - 32); // prevent sticking
}

if (y < 22 || y > 490 - sprite_height) {
    direction = 360 - direction;
    y = clamp(y, 32, room_height - 32); // prevent sticking
}