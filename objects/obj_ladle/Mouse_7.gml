ladle_placed = true
ladle_follow = false
if (place_meeting(x,y,obj_mug) && filled_cups == 0){
	if(has_brew){
		instance_create_layer(obj_mug.x,obj_mug.y,"draggable", obj_mug_full)
		sprite_index = spr_ladle_empty
		filled_cups = 1
		has_brew=false
	} else if (has_burn){
		instance_create_layer(obj_mug.x,obj_mug.y,"draggable", obj_mug_burn)
		sprite_index = spr_ladle_empty
		filled_cups = 1
		has_burn = false
	}
}
x=og_x
y=og_y