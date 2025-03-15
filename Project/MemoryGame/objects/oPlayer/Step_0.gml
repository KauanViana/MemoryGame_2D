var player_speed = 4;

if (keyboard_check_pressed(vk_up)) last_key = vk_up;
if (keyboard_check_pressed(vk_down)) last_key = vk_down;
if (keyboard_check_pressed(vk_right)) last_key = vk_right;
if (keyboard_check_pressed(vk_left)) last_key = vk_left;

if (keyboard_check_released(last_key)) last_key = -1;

if (last_key == vk_up) {
    sprite_index = sPlayerWalking;
    obj_direction = obj_up; 
    y -= player_speed;
} 
else if (last_key == vk_down) {
    sprite_index = sPlayerWalking;
    obj_direction = obj_down; 
    y += player_speed;
} 
else if (last_key == vk_right) {
    sprite_index = sPlayerWalking;
    obj_direction = obj_right; 
    x += player_speed;
} 
else if (last_key == vk_left) {
    sprite_index = sPlayerWalking;
    obj_direction = obj_left; 
    x -= player_speed;
}

else {
	sprite_index = sPlayerIdle;
}

var frame1 = 0;
var frame2 = 1;
var obj_index;

image_speed = 0; 

if (floor(current_time / 200) mod 2 == 0) {
    obj_index = frame1;
} else {
    obj_index = frame2;
}

image_index = obj_direction[obj_index];