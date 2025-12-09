if (room == Order && room != upgrades){
	room_goto(6)	
} else if (room != upgrades){
	room_goto_previous()
}