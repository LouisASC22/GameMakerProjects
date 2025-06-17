x += hspeed;
y += vspeed;

var hoffset = 0;
var voffset = 0;

global.score += 0.25;

// Bouncy walls
if (x < 0 || x > room_width - sprite_width) hspeed *= -1;
if (y < 0) vspeed *= -1;

instance_create_layer(x, y, "Instances", obj_trail);

// Check for lose condition
if (y > room_height) {
	if (global.lives > 1) {
		audio_play_sound(snd_jump, 1, false);
		x = 62;
		y = 90;
		hoffset = random(0.8);
		voffset = random(0.2);
		hspeed = 0.4 - hoffset;
		vspeed = -0.3 -voffset;
		global.lives -=1;
	} else {
		// Reset ball
		global.lives -=1;
		audio_play_sound(snd_lose, 1, false);
		show_message("You lose!");
		game_restart();
	}
}