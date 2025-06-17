if(global.lives > 0) {
	draw_sprite(spr_gaster_blaster, 0, room_width - 60, room_height - 80);
}
if(global.lives > 1) {
	draw_sprite(spr_gaster_blaster, 0, room_width - 120, room_height - 80);
}
if(global.lives > 2) {
	draw_sprite(spr_gaster_blaster, 0, room_width - 180, room_height - 80);
}

draw_sprite(spr_gaster_blaster, 0, obj_ship.x, obj_ship.y);