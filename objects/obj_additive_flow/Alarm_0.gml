var associated_add = instance_nearest(room_width+200,y,obj_additive)
associated_add.x = associated_add.og_add_x
associated_add.y = associated_add.og_add_y
var associated_mug = instance_nearest(x,y,obj_mug_full)
associated_mug.mug_ingre += seconds* power(10,pow)
instance_destroy(obj_additive_amount)
additive_controller.pouring=false
instance_destroy(self)
