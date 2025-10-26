order_controller.ordering = false
instance_destroy(obj_ticket)
order_controller.customers-=1
var _target_instance = instance_nearest(0, 0, obj_angry);
if (instance_exists(_target_instance)) {
	instance_destroy(_target_instance)
}
instance_destroy(self)
