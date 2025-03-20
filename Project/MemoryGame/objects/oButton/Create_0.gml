image_speed = 0;
function set_position(posX, posY){
	x = posX;
	y = posY;
}

function execute(){
	switch (command){
		case "Reiniciar": sSwitchRoom(rMainRoom); break;
		case "Iniciar Jogo": sSwitchRoom(rMainRoom); break;
	}
}