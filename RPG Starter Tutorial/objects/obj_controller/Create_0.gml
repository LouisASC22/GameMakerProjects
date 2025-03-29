global.dialogue_active = false;  // Tracks if the dialogue box is active
global.dialogue_text = "";  // Stores the dialogue box text

box_width = 160;  // Width of the dialogue box
box_height = 50;  // Height of the dialogue box

box_x = (280 - box_width) / 2;  // Centered 
box_y = 180 - box_height - 20;  // 20px from bottom

head_x = box_x + 10;  // 10px from the left
head_y = box_y + 10;  // 10px from the top

text_x = box_x + 70;  // To the right of the head
text_y = box_y + 10;  // 10px from the top

camera_offset_x = 0;
camera_offset_y = 0;

max_text_width = box_width - 70;
wrapped_text = "Pringles";

global.show_crosshair = true;
cursor_sprite = spr_crosshair_1;
window_set_cursor(cr_none);