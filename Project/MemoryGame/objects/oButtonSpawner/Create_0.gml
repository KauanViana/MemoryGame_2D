var buttons = [];
switch (room_get_name(room)){
	case "rGameOver":
		array_push(buttons, instance_create_layer(room_width / 2, room_height / 2, "Instances", oButton));
		buttons[0].command = "Menu";
		buttons[0].sprite_index = sButtonMenu;
		break;
	case "rMenu":
		array_push(buttons, instance_create_layer(350, 350, "Instances", oButton));
		array_push(buttons, instance_create_layer(350, 500, "Instances", oButton));
		
		buttons[0].command = "Play";
		buttons[1].command = "Credits";
		buttons[0].sprite_index = sButtonPlay;
		buttons[1].sprite_index = sButtonCredits;
		break;
	case "rGameCompleted":
		array_push(buttons, instance_create_layer(room_width / 2, room_height / 2, "Instances", oButton));
		buttons[0].command = "Menu";
		buttons[0].sprite_index = sButtonMenu;
		break;
	case "rCredits":
		array_push(buttons, instance_create_layer(room_width / 2, 550, "Instances", oButton));
		buttons[0].command = "Menu";
		buttons[0].sprite_index = sButtonMenu;
		break;
}
