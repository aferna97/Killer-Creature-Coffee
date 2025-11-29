if (angry && !order_controller.ordering){
	instance_destroy(obj_ticket)
	order_controller.ordering = false
	order_controller.customers-=1
	obj_cat.customer_walk_out+=1
	instance_destroy(self)
}