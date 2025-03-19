// Setting player looking sprites
obj_down	= [0,1];
obj_up		= [2,3];
obj_right	= [4,5];
obj_left	= [6,7];

// Initial settings
obj_direction	= obj_down;		// starts looking down
sprite_index	= sPlayerIdle;	// starts w/ Idle Sprite
initial_x		= 676;			// variable for the initial x of player
initial_y		= 656;			// variable for the initial y of player
x				= initial_x;	// setting initial x of player
y				= initial_y;	// setting initial y of player
last_key		= -1;			// variable for check last key pressed (-1 = none)
player_speed	=  8;			// setting player moving speed
can_move		= false;		// preventing player from moving at the game start

function player_movement(){
	// Checking last key pressed
	if (keyboard_check_pressed(vk_up))		last_key = vk_up;
	if (keyboard_check_pressed(vk_down))	last_key = vk_down;
	if (keyboard_check_pressed(vk_right))	last_key = vk_right;
	if (keyboard_check_pressed(vk_left))	last_key = vk_left;
	if (keyboard_check_released(last_key))	last_key = -1;

	// Moving player according to last key pressed
	if (last_key == vk_up) {
	    sprite_index	= sPlayerWalking;	// change sprite to Walking Sprite
	    obj_direction	= obj_up;			// change index to looking up
	    y				-= player_speed;	// moving player on the y-axis
		
	} else if (last_key == vk_down) {
	    sprite_index	= sPlayerWalking;	// change sprite to Walking Sprite
	    obj_direction	= obj_down;			// change index to looking down
	    y				+= player_speed;	// moving player on the y-axis
		
	} else if (last_key == vk_right) {
	    sprite_index	= sPlayerWalking;	// change sprite to Walking Sprite
	    obj_direction	= obj_right;		// change index to looking right
	    x				+= player_speed;	// moving player on the x-axis
		
	} else if (last_key == vk_left) {
	    sprite_index	= sPlayerWalking;	// change sprite to Walking Sprite
	    obj_direction	= obj_left;			// change index to looking left 
	    x				-= player_speed;	// moving player on the x-axis
		
	} else { // player not moving
		sprite_index	= sPlayerIdle;		// change sprite to Idle Sprite
	}
}
	
function animate_sprites(){
	// Setting variables for sprite manipulation (each player looking sprite will have 2 frames)
	var frame1 = 0;	// setting first frame (initially w/ the value 0)
	var frame2 = 1; // setting second frame (initially w/ the value 1)
	var obj_index;	// variable to serve as an index for obj_direction variable

	// Turning off sprite auto-animation
	image_speed = 0; 

	// Alternating frames of the sprite
	if (floor(current_time / 200) mod 2 == 0) {
	    obj_index = frame1; // turning into frame 1
	} else {
	    obj_index = frame2; // turning into frame 2
	}

	// Animating the sprite
	image_index = obj_direction[obj_index];
}