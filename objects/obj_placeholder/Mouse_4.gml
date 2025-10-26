if (!order_controller.ordering){
	instance_create_layer(room_width-200,room_height-450,"Instances_foreground", obj_ticket)
	order_controller.ordering = true
	angry = false
	alarm[0] = ordering_time * game_get_speed(gamespeed_fps)
}