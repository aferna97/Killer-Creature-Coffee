if (room != Computer && room != upgrades){
	if (room=Order){	//if not ordering
		if (!order_controller.ordering){
			room_goto(6)
		}
	} else{
		room_goto(6)
	}	
} 