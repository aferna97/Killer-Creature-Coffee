order_controller.ordering = false
//instance_destroy(obj_ticket)
instance_destroy(obj_dialogue_zombie)
order_controller.customers-=1
instance_create_layer(-400,250,"Info", obj_monster_1,{sprite_index: icon, patience: other.patience})
instance_destroy(self)
