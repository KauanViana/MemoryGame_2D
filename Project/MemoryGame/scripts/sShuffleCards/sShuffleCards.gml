// Shuffling cards
function sShuffleCards(){
	var cards_values = oCardSpawner.cards_values;
	cards_values = sShuffleArray(cards_values);
	
	num_cards = instance_number(oCard);
	for (var i = 0; i < num_cards; i++){
		var inst = instance_find(oCard, i);
		inst.card_value = cards_values[i];
		
		inst.image_index = inst.card_value;
	}
}

// Implementing Fisher-Yates Shuffle
function sShuffleArray(arr){
	var len = array_length(arr);
	for (var i = len - 1; i > 0; i--) {
	    var j = irandom(i);
	    var temp = arr[i]; 
	    arr[i] = arr[j];
	    arr[j] = temp;
	}
	return arr;
}