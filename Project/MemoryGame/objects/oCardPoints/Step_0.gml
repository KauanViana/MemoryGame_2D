if (keyboard_check_pressed(vk_space)){
	with (oCard){
		if (place_meeting(x, y, oPlayer)) {
			if (image_index == 0){
				if (other.selected_card[0] == 0){
					other.selected_card[0] = card_value;	
				} else {
					other.selected_card[1] = card_value;
				}
			} else {
				if (other.selected_card[0] != 0){
					other.selected_card[0] = 0;	
				} else {
					other.selected_card[1] = 0;
				}
			}
		}
	}
	
	if (selected_card[0] != 0 && selected_card[1] != 0 ){
		if (selected_card[0] == selected_card[1]){	
			with(oCard){
				if(other.selected_card[0] == card_value){
					color_change = false;
					image_blend = c_green;
				}
			}
			selected_card = [0,0];
		} else {
			with (oCard){
				hide_card(true);
				anim_card();
			}
			selected_card = [0,0];
		}
	}
}

if (keyboard_check_pressed(vk_backspace)){
	selected_card = [0,0];
}