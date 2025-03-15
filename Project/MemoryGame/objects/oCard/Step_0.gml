if((y < room_height/2)){
	y += card_speed;
	anim_key = true;
} else if ((y > room_height/2)){
	y = room_height/2;
	anim_key = true;
} else {
	if (waiting) {
	    wait_time -= 1;
	    if (wait_time <= 0) {
	        waiting = false;
	        hide_card(anim_key);
			anim_key = false;
	    }
	}
}

anim_card();


if (colliding && !place_meeting(x, y, oPlayer)) {
    colliding = false;
}

collision_w_p();