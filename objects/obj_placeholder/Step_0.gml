if (delete_self){
	instance_destroy(obj_ticket)
	order_controller.customers-=1
	instance_destroy(self)
}
