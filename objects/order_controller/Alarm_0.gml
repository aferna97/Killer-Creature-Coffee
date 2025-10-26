if (customers < 3){
	var customer_id = layer_get_id("Customer")
	var elements = layer_get_all_elements(customer_id)
	for (var i = 0; i<array_length(elements); i++){
		var inst = layer_instance_get_instance(elements[i])
		inst.x -=200
	} with(obj_angry){
		x -=200	
	}
	var i = irandom_range(0,3)
	switch(i){
		case 1: customer = obj_placeholder
		break
		case 2: customer = obj_placeholder_2
		break
		default: customer = obj_placeholder_3
		break
	}	
	instance_create_layer(spawn_x,15,"Customer",customer)
	
		
	customers +=1
}
alarm[0]=random_range(order_time_min, order_time_max) * game_get_speed(gamespeed_fps)