image_speed = 0;
sprite_index = spr_bone_long_v;
if (variable_instance_exists(self, "height")) {
    image_yscale = 1;
} else {
    image_yscale = 96 / sprite_height; // default
}