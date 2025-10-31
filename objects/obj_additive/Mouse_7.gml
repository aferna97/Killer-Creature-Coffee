add_placed = true
add_follow = false
//fill mug
if (place_meeting(x,y,obj_mug_full)){
	var associated_mug = instance_nearest(x,y,obj_mug_full)
	associated_mug.mug_ingre += 1* power(10,pow)
	instance_create_layer(associated_mug.x+100,associated_mug.y-150,"foreground",obj_additive_ani, {spr_index_ani: spr_index})
	x=room_width+200
} else{
	x = og_add_x
	y = og_add_y
}