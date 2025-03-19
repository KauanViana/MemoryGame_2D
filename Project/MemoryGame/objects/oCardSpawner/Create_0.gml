// Setting variables
num_cards		= 0;	// variable for the number of cards
cards_values	= [];	// array for stock cards values (also used in sShuffleCards.gml)

function instance_cards(){
	// Positioning cards through the room size
	for (var i = 0; i < num_cards; i++) {
		if (num_cards > 0) {
		    cardX = (room_width / (num_cards + 1)) * (i + 1); 
		} else {
		    cardX = room_width / 2;
		}
		
		// Instancing the cards
		var new_card = instance_create_layer(cardX, -100, "Instances", oCard);
		new_card.index = i + 1;
	}
}

function remove_cards(){
	// Destroying all the cards present in the room
	with (oCard) {
	    instance_destroy();
	}
	
	// Adding new values to the cards_values[] by the number of cards
	array_push(cards_values, num_cards);
	array_push(cards_values, num_cards);
}

function reset_cards(){
	num_cards		= 0;		// restoring lvl
	cards_values	= [];		// restoring cards_values[]
}
