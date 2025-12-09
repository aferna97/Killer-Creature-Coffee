if (room != Brew && room != upgrades){
	if (room=Order){	//if not ordering
		if (!order_controller.ordering){
			room_goto(4)
		}
	} else{
		room_goto(4)
	}	
} 