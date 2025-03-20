selected_card	= [0,0];
cards_remaining = 0;
num_cards		= 0;
lifes			= 5;

function lvl_completed(){
	var key			= false;					// key to pass the level
	num_cards		= instance_number(oCard);	// getting the number of cards
	cards_remaining = num_cards;				// variable to store the amount of cards remaining
	
	// Decreasing the amount of cards remaining by the number of green cards
	for (var i = 0; i < num_cards; i++){
		var inst = instance_find(oCard, i);
		if (inst.image_blend == c_green){
			cards_remaining -= 1;
		}
	}
	
	// Opening card logic
	with (oCard){
		// Passing to the next level if level > 1
		if (other.cards_remaining <= 2 and other.num_cards > 2 and image_index == 0){
			hide_card(sCardAnimAppear);
			image_index			= card_value;
			oPlayer.can_move	= false;
			key					= true;
		// Passing to the next level if level = 1
		} else if (other.cards_remaining <= 2 and other.num_cards == 2 and image_blend == c_green){
			oPlayer.can_move	= false;
			key					= true;
		}
	}
	// Returning true if level has been completed
	return key;
}

function lvl_failed(){
	var key =  false;
	if (lifes == 0) {
		oPlayer.can_move	= false;
		key					= true;
	}
	
	return key;
}

function card_selector(){
	// Opening card logic
	with (oCard){
		if (place_meeting(x, y, oPlayer)) {
			// Select card
			if (image_index == 0){
				switch(other.selected_card[0]){
					case 0: other.selected_card[0]	= card_value; break;	// [x, 0]
					default: other.selected_card[1] = card_value; break;	// [x, y]
				}	
			// Unselect card
			} else {
				switch (card_value){
					case other.selected_card[0]: other.selected_card[0]	= 0; break;	// [0, y] or [0, 0]
					case other.selected_card[1]: other.selected_card[1]	= 0; break;	// [x, 0] or [0, 0]
				}
			}
		}
	}
	
	// Checking if both cards are the same
	if (selected_card[0] != 0 && selected_card[1] != 0 ){	// checking if two cards were selected
		if (selected_card[0] == selected_card[1]){			// checking if both are equal
			// Opening card logic
			with(oCard){
				if(other.selected_card[0] == card_value){	// checking if the card is the selected card
					color_change = false;					// preventing card of change blend to red
					image_blend = c_green;					// changing blend to green
				}
			}	
		// When cards are not equal
		} else {
			lifes -= 1;
			with (oCard){
				hide_card(sCardAnimHide);
				has_animated = false;
			}
		}
		
		// reseting selected cards after a guess
		selected_card = [0,0];	
	}
}