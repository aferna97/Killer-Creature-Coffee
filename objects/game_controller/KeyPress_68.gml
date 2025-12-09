if (room == Computer && room != upgrades){
	room_goto(2)	
} else if (room != upgrades){
	room_goto_next()
}