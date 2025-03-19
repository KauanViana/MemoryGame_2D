if(keyboard_check_pressed(vk_enter)){	
	sNewLVL(num_cards / 2);
}

if(keyboard_check_pressed(vk_backspace)){
	remove_cards();
}

if(keyboard_check_pressed(vk_delete)){
	reset_cards();
}