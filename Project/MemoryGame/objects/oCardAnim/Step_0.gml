if (!oCard.has_animated){
	sprite_index = sCardAnimHide;
} else {
	sprite_index = sCardAnimAppear;
}

if (image_index >= image_number - 1) {		
	var num_cards = instance_number(oCard);
	for (var i = 0; i < num_cards; i++){
		var inst = instance_find(oCard, i);
		if (inst.image_blend != c_green and !inst.has_animated){
			inst.image_index = 0;
			inst.has_animated = true;
		}
	}
	
	instance_destroy();
}