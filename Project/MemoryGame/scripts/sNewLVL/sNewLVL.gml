function sNewLVL(lvl){
	if (lvl < 9){
		show_debug_message("\n");
		// Player settings
		oPlayer.x = oPlayer.initial_x;
		oPlayer.y = oPlayer.initial_y;
		oPlayer.obj_direction = oPlayer.obj_down;
		oPlayer.last_key = [-1, ""];
		oPlayer.sprite_index = sPlayerIdle;
		oCardPoints.lifes = 5;

		// Turning into next lvl
		oPlayer.can_move = false;
		oCardSpawner.num_cards += 2;
		oCardSpawner.remove_cards();
		oCardSpawner.instance_cards();
		sShuffleCards();
		oGUI.timer();
	} else {
		room_goto(rGameCompleted);
	}
}