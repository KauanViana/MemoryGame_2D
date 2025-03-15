num_cards = 2;
cards_values = [2,2];

function instance_cards(){
	for (var i = 0; i < num_cards; i++) {
		if (num_cards > 0) {
		    cardX = (room_width / (num_cards + 1)) * (i + 1); 
		} else {
		    cardX = room_width / 2;
		}
		
		var new_card = instance_create_layer(cardX, -100, "Instances", oCard);
		new_card.index = i + 1;
	}
}

function shuffle_cards(){
	cards_values = shuffle_array(cards_values);
	
	num_cards = instance_number(oCard);
	for (var i = 0; i < num_cards; i++){
		var inst = instance_find(oCard, i);
		inst.card_value = cards_values[i];
		
		inst.image_index = inst.card_value;
	}
}

function remove_cards(){
	with (oCard) {
	    instance_destroy();
	}
	
	num_cards += 2;
	array_push(cards_values, num_cards);
	array_push(cards_values, num_cards);
}

function reset_cards(){
	num_cards = 2;
	cards_values = [2,2];
}

function shuffle_array(arr) {
    var len = array_length(arr);
    for (var i = len - 1; i > 0; i--) {
        var j = irandom(i);
        var temp = arr[i]; 
        arr[i] = arr[j];
        arr[j] = temp;
    }
    return arr;
}