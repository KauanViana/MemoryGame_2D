if (keyboard_check_pressed(vk_space)){
	card_selector();
	if (lvl_completed()) alarm[0] = room_speed * 2;
	if (lvl_failed()) alarm[1] = room_speed * 2;
}

if (keyboard_check_pressed(vk_backspace)){
	selected_card = [0,0];
}