if (!empty && !place_meeting(x,y,obj_cup_full)){
	instance_create_layer(x,y,"draggables", obj_cup_full)
	fill_amount = 1
	empty = true
} if (fill_amount ==2){
	obj_cup_full.spr_index_cup = 2
} else if (fill_amount == 3){
	obj_cup_full.spr_index_cup = 3	
}