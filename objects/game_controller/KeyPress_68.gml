if (room == Computer && room != upgrades){
	room_goto(upgrades)	
} else if (room != upgrades){
	room_goto_next()
}