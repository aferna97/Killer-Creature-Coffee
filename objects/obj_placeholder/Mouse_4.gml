if (!order_controller.ordering && order_controller.customer1 == self){
	instance_create_layer(room_width-200,room_height-450,"Instances_foreground", obj_ticket)
	order_controller.ordering = true
	alarm[0] = 5 * game_get_speed(gamespeed_fps)
}