if (angry && !order_controller.ordering){
	//instance_destroy(obj_ticket)
	instance_destroy(Obj_dialogue_zombie)
	order_controller.ordering = false
	order_controller.customers-=1
	obj_cat.customer_walk_out+=1
	instance_destroy(self)
}