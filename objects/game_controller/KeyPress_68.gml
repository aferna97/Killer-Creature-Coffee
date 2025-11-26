if (room == Computer && room != upgrades){
	room_goto(1)	
} else if (room != upgrades){
	room_goto_next()
}