if (room == Order && room != upgrades){
	room_goto(Computer)	
} else if (room != upgrades){
	room_goto_previous()
}