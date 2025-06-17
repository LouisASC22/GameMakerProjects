// display score
draw_text(10, 10, "Score: " + string(score));
draw_text(10, 30, "Enemies Left: " + string(alien_count));
draw_text(10, 50, "Lives: " + string(global.lives));

// kill all to win
if (alien_count == 0) {
    show_message("You Win!");
    game_restart();
}

// decrease score when enemies complete a row
if (!row_update) {
	score -= 100;
	row_update = !row_update;
}

// https://forum.gamemaker.io/index.php?threads/how-to-find-where-when-a-variable-changes.59804/