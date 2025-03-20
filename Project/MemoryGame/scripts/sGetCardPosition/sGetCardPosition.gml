function sGetCardPosition(instance_index, num_cards){
	if (instance_index < 6)	i = instance_index;
	else if (instance_index >= 6 and instance_index < 12)	i = instance_index - 6;
	else if (instance_index >= 12 and instance_index <= 18) i = instance_index - 12;
	
	var x_positions = [room_width * (14.29/100), room_width * (28.57/100), room_width * (42.86/100), room_width * (57.14/100), room_width * (71.43/100), room_width * (85.71/100)]
	var cardX;
	
	switch (num_cards){
		case 2: cardX = x_positions[i + 2]; break;
		case 4: cardX = x_positions[i + 1]; break;
		default: cardX = x_positions[i]; break;
	}
	
	return cardX;
}