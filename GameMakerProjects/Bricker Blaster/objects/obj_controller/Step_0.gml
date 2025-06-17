if (instance_number(obj_brick) == 0) {
	audio_play_sound(snd_win, 1, false);
    show_message("You win!");
    game_restart();
}

