image_speed = 0;

function execute(){
	switch (command){
		case "Menu": 
			sSwitchRoom(rMenu); 
			break;
		case "Play": 
			sSwitchRoom(rMainRoom); 
			break;
		case "Credits": 
			sSwitchRoom(rCredits); 
			break;
	}
}