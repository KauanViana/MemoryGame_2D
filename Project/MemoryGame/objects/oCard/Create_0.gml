card_scale = 4;
image_yscale = card_scale;
image_xscale = card_scale;
depth = 3

wait_time = room_speed * 3; 
waiting = true;

cards_count = instance_number(oCard);
card_speed = 8;

anim_key = false;

color_change = true;
colliding = false;
function collision_w_p(){
	if(colliding and color_change){
		image_blend = c_red;
	} else if (color_change) {
		image_blend = c_white;
	}
}

function anim_card(){
	with (oCardAnim) {
	    if (image_index >= image_number - 1) {
	        instance_destroy();
			
			var num_cards = instance_number(oCard);
			for (var i = 0; i < num_cards; i++){
				var inst = instance_find(oCard, i);
				if (inst.image_blend != c_green){
					inst.image_index = 0;
				}
			}
	    }
	}
}

function hide_card(key){
	if(key){
		var card_anim = instance_create_layer(x, y, "Instances", oCardAnim);
		card_anim.image_xscale = card_scale;
		card_anim.image_yscale = card_scale;
	}
}