if (room == Order && room != upgrades){
	if (!order_controller.ordering){
		room_goto(6)	
	}
} else if (room != upgrades){
	room_goto_previous()
}