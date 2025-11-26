if (room == Order && room != upgrades){
	room_goto(5)	
} else if (room != upgrades){
	room_goto_previous()
}