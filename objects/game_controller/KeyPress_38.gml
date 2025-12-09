//debug upgrades
if (room != upgrades&& room!=MainMenu){
	//reset gingerdead
	global.gingerdead_used=false
	global.night +=1
	room_goto(7)
} 