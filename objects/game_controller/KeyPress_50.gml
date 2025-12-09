if (room != Prep && room != upgrades){
	if (room=Order){	//if not ordering
		if (!order_controller.ordering){
			room_goto(3)
		}
	} else{
		room_goto(3)
	}
} 