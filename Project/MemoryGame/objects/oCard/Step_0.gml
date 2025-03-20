// Catching collision with player
collision_w_p();
if (colliding && !place_meeting(x, y, oPlayer)) {
    colliding = false;
}

// Bringing cards into the middle of y-axis
if (y < final_y){
	y += card_speed;	
} else if (y > final_y){
	anim_key = sCardAnimHide;
	y = final_y;
}