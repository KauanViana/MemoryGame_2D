colliding = true;

if (keyboard_check_pressed(vk_space)){
	if (image_index == card_value and image_blend != c_green) {
		image_index = 0;
	} else if (image_index == 0){
		image_index = card_value;
	}
}
