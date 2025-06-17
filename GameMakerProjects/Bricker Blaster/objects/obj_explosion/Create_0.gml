// effect_create_above(ef_explosion, x, y, 1, explosion_color);
alarm[1] = 1;

// placeholder
explosion_color = c_red;
// https://forum.gamemaker.io/index.php?threads/using-instance-variables-in-functions.104221/

// Create particle system
part_sys = part_system_create();
part_system_depth(part_sys, depth); // match object depth

// Create particle type
part = part_type_create();
part_type_shape(part, pt_shape_explosion);
part_type_size(part, 0.5, 1, 0, 0);
var r = color_get_red(explosion_color);
var g = color_get_green(explosion_color);
var b = color_get_blue(explosion_color);
part_type_color_rgb(part, r, g, b, r, g, b);
part_type_alpha2(part, 1, 0);
part_type_speed(part, 1, 3, 0, 0);
part_type_direction(part, 0, 360, 0, 0);
part_type_life(part, 15, 30);
part_type_blend(part, true);

// Emit burst
part_particles_create(part_sys, x, y, part, 20);

// Destroy self after short delay
alarm[0] = 5;

// https://manual.gamemaker.io/monthly/en/The_Asset_Editors/Particle_Systems.htm

show_debug_message(string(r));