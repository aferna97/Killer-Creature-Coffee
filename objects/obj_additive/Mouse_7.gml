add_placed = true
add_follow = false
//fill mug
var associated_mug = instance_nearest(x,y,obj_mug_full)
var ingre = associated_mug.mug_ingre
if ((place_meeting(x,y,obj_mug_full)) && (floor(ingre/(1*power(10,pow))) % 10 == 0 && !additive_controller.pouring)){
	instance_create_layer(associated_mug.x+100,associated_mug.y-150,"foreground",obj_additive_ani, {spr_index_ani: spr_index})
	x=room_width+200
} else{
	x = og_add_x
	y = og_add_y
}