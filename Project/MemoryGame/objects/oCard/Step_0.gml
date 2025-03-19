// Catching collision with player
collision_w_p();
if (colliding && !place_meeting(x, y, oPlayer)) {
    colliding = false;
}

// Bringing cards into the middle of y-axis
if (y < room_height/2){
	y += card_speed;
	anim_key = true;	
} else if (y > room_height/2){
	y = room_height/2;
	anim_key = true;
}