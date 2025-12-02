order_controller.ordering = false
//instance_destroy(obj_ticket)
instance_destroy(obj_dialogue_ghost)
order_controller.customers-=1
instance_create_layer(250,250,"Instances", obj_monster_1,{sprite_index: icon, patience: other.patience})
instance_destroy(self)