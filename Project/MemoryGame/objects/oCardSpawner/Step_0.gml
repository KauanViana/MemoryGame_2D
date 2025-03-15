if(keyboard_check_pressed(vk_enter)){	
	instance_cards();
	shuffle_cards();
}

if(keyboard_check_pressed(vk_backspace)){
	remove_cards();
}

if(keyboard_check_pressed(vk_delete)){
	reset_cards();
}