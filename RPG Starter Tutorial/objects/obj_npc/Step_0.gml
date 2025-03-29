// Check if the player is touching the NPC
if (place_meeting(x, y, obj_player))
{
    obj_player.is_in_range = true;
	show_debug_message("Player is in range!");
	
	// Opens chat when space key is pressed
    if (keyboard_check_pressed(vk_space))
    {
        obj_player. is_interacting = true;
        global.dialogue_active = true;
        global.dialogue_text = "Look... I don't know about any great war or responsibility, I just know that I really want to wipe the smirk off that guy's face! You with me?";  // NPC specific text
		// show_debug_message("Dialogue Triggered!");
    }
}
else
{
    obj_player.is_in_range = false;
	global.dialogue_active = false;
	global.dialogue_text = "";
	// show_debug_message("Player is not in range!");
	
}
