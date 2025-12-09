if (room == Computer && room != upgrades){
	room_goto(2)	
} else if (room != upgrades){
	if (room=Order){	//if not ordering
		if (!order_controller.ordering){
			room_goto_next()
		}
	} else{
		room_goto_next()
	}
}