// Setting scale and position
card_scale		= 4;
image_yscale	= card_scale;
image_xscale	= card_scale;
depth			= 3

// Setting timer to hide cards
alarm[0] = room_speed * 4;

// Setting variables
cards_count		= instance_number(oCard);
card_speed		= 8;
anim_key = sCardAnimHide;
color_change	= true;
final_y			= 0;

// Collision out function (used to change color blend (red/white) through the collision with player)
colliding = false;
function collision_w_p(){
	if(colliding and color_change){
		image_blend = c_red;
	} else if (color_change) {
		image_blend = c_white;
	}
}

function hide_card(key){
		var card_anim = instance_create_layer(x, y, "Instances", oCardAnim);
		card_anim.sprite_index = key;
		card_anim.image_xscale = card_scale;
		card_anim.image_yscale = card_scale;
		
}