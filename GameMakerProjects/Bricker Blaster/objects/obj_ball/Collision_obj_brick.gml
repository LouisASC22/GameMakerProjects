var xleft = other.x;
var xright = other.x + other.sprite_width;
var ytop = other.y;
var ybottom = other.y + other.sprite_height;

if(x_previous - sprite_width < xleft || x_previous > xright) {
	hspeed *= -1;
} else {
	vspeed *= -1;
}

if (global.explosions_enabled) {
	audio_play_sound(snd_break, 1, false);
	var explosion = instance_create_layer(other.x, other.y, "Instances", obj_explosion);
	explosion.explosion_color = other.brick_color;
}

// https://forum.gamemaker.io/index.php?threads/how-to-draw-explosion-effects.49966/
// https://www.youtube.com/watch?v=FbdBaN7-nTE

instance_destroy(other); // break brick

global.score += 100;