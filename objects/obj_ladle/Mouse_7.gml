ladle_placed = true
ladle_follow = false
if (place_meeting(x,y,obj_mug) && filled_cups == 0){
	if(has_brew){
		if (place_meeting(x,y,obj_filter_flat)){
			obj_filter_flat.poured = true
			
			audio_play_sound(Sound_pouringCoffee,10,0)
		}
		instance_create_layer(obj_mug.x,obj_mug.y,"draggable", obj_mug_full)
		sprite_index = spr_ladle_empty
		var associated_mug = instance_nearest(x,y,obj_mug_full)
		associated_mug.mug_ingre = ladle_ingre
		associated_mug.mug_prep_amount = ladle_prep_amount
		ladle_ingre = 0
		filled_cups = 1
		has_brew=false
	} else if (has_burn){
		instance_create_layer(obj_mug.x,obj_mug.y,"draggable", obj_mug_burn)
		sprite_index = spr_ladle_empty
		ladle_ingre = 0
		filled_cups = 1
		has_burn = false
	}
}
x=og_x
y=og_y