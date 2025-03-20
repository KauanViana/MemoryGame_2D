var buttons = [];
switch (room_get_name(room)){
	case "rGameOver":
		array_push(buttons, instance_create_layer(room_width / 2, room_height / 2, "Instances", oButton));
		buttons[0].command = "Reiniciar";
		break;
	case "rMenu":
		array_push(buttons, instance_create_layer(room_width / 2, room_height / 2, "Instances", oButton));
		buttons[0].command = "Iniciar Jogo";
		break;
	case "rGameCompleted":
		array_push(buttons, instance_create_layer(room_width / 2, room_height / 2, "Instances", oButton));
		buttons[0].command = "Reiniciar";
		break;
}
