// https://forum.gamemaker.io/index.php?threads/how-to-add-a-font.104305/#:~:text=It%20describes%20how%20you%20can%20right-click%20in%20the,reading%20the%20manual%20page%20on%20The%20Font%20Editor.

fontDet = font_add_sprite_ext(spr_font_det_u, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()_-+={[]}:;'<,>.?/", false, 1);
// I cannot for the life of me figure out why the special characters are not working
// fontDet = font_add_sprite_ext(spr_font_det_n, "2", true, 1);

draw_set_font(fontDet);

// typewriter effect
text_cur = "";				// initially blank

typ_speed = 5;				// frames per character
typ_timer = 0;				// start at 0 characters

text_index = 0;					// iterate through the text

timeout = 0;