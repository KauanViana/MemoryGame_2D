// Setting variables
num_cards		= 0;	// variable for the number of cards
cards_values	= [];	// array for stock cards values (also used in sShuffleCards.gml)
percentual_startX = 50;

function instance_cards(){
	// Defining the number of cards per row and the spacing
	var cards_per_row = 6;		// number of cards per row
	var spacing = 200;			// space between the cards

	// Iterating over the cards and creating them
	for (var i = 0; i < num_cards; i++) {
		// Calculating the card's X position in the current row
		var cardX = sGetCardPosition(i, num_cards);
		
		// Calculating the card's Y position based on the number of cards per row
		var cardY = 0; 
		
		// Instantiating the card
		var new_card = instance_create_layer(cardX, cardY, "Instances", oCard);
		new_card.index = i + 1;
		new_card.final_y = floor(i / cards_per_row) * spacing + spacing;
		
	}
	percentual_startX -= 12.5;
	if (percentual_startX <= 12.5){
		percentual_startX = 12.5;
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
	percentual_startX = 50;
}

// Starting first level
alarm[0] = room_speed * 0.5;