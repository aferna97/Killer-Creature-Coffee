if (room != Additive && room != upgrades){
	if (room=Order){	//if not ordering
		if (!order_controller.ordering){
			room_goto(5)
		}
	} else{
		room_goto(5)
	}
} 