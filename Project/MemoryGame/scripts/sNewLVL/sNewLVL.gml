function sNewLVL(lvl){
// Player settings
oPlayer.x = oPlayer.initial_x;
oPlayer.y = oPlayer.initial_y;
oPlayer.obj_direction = oPlayer.obj_down;
oPlayer.last_key = -1;
oPlayer.sprite_index = sPlayerIdle;

// Turning into next lvl
oPlayer.can_move = false;
oCardSpawner.num_cards += 2;
oCardSpawner.remove_cards();
oCardSpawner.instance_cards();
sShuffleCards();
oGUI.timer();
}