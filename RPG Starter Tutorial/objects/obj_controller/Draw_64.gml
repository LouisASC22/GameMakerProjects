if (global.dialogue_active)
{
	camera_offset_x = view_xview[0];  // Camera's X position
	camera_offset_y = view_yview[0];  // Camera's Y position

	
	box_width = 640;  // Width of the dialogue box
	box_height = 200;  // Height of the dialogue box

	box_x = ((760 - box_width) / 2);  // Centered 
	box_y = 440;  // 20px from bottom

	head_x = box_x + 60;  // 10px from the left
	head_y = box_y + 60;  // 10px from the top

	text_x = box_x + 220;  // To the right of the head
	text_y = box_y + 80;  // 10px from the top
	
	max_text_width = box_width - 220;
	
    // Draw a dislogue box
    draw_sprite_ext(spr_dialogue_box, 0, box_x, box_y, 1.4, 1.4, 0, c_white, 1);  // Might not be centered
    draw_sprite_ext(spr_guide_head, 0, head_x, head_y, 4.2, 4.2, 0, c_white, 1);  // Might not be in the box

    // Draw dialogue text
    draw_set_color(c_white);
    draw_text_ext_transformed(text_x, text_y, global.dialogue_text, 16, max_text_width, 2, 2, 0);  // Might not be centered
}

var health_bar_x = 10;  // Horizontal position
var health_bar_y = 10;  // Vertical position
var heart_width = sprite_get_width(spr_heart);  // Get width of one heart sprite
var heart_spacing = 5;  // Spacing between hearts

var frame = 6 - obj_player.player_health;  // Health frame (6 -> 0, where 0 is full health, 6 is no health)
var health_sprite_index = 6 - obj_player.player_health;  // Get the sprite index based on the player's health

// Draw the health bar (using the health sprites)
for (var i = 0; i < 3; i++) {
    if ((health_sprite_index - 2) = 0) {  // Only draw the hearts that are part of the player's current health
        draw_sprite_ext(spr_heart, 2, health_bar_x + i * (heart_width + heart_spacing), health_bar_y, 3, 3, 0, c_white, 1);
    } else if ((health_sprite_index - 2) = 1) {
		draw_sprite_ext(spr_heart, 1, health_bar_x + i * (heart_width + heart_spacing), health_bar_y, 3, 3, 0, c_white, 1);
	} else {
		draw_sprite_ext(spr_heart, 0, health_bar_x + i * (heart_width + heart_spacing), health_bar_y, 3, 3, 0, c_white, 1);
	}
}