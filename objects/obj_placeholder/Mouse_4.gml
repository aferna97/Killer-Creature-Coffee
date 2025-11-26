if(angry == true)
{	//prevents ticket poping up while customer is angry
	instance_destroy(obj_ticket)
}
else if (!order_controller.ordering){
	instance_create_layer(room_width-200,room_height-450,"Instances_foreground", obj_ticket)
	order_controller.ordering = true
	angry = false
	//save customer in game_controller to use for selecting who
	//to serve and scan for if it's thing
	if (game_controller.customer_1==obj_icon){
		game_controller.customer_1 = self.icon
	} else if (game_controller.customer_2==obj_icon){
		game_controller.customer_2 = self.icon
	} else if (game_controller.customer_3==obj_icon){
		game_controller.customer_3 = self.icon	
	} else {
		game_controller.customer_4 = self.icon	
	}
	alarm[0] = ordering_time * game_get_speed(gamespeed_fps)
}
