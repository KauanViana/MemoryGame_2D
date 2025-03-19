if (keyboard_check_pressed(vk_space)){
	card_selector();
	lvl_completed();
}

if (keyboard_check_pressed(vk_backspace)){
	selected_card = [0,0];
}