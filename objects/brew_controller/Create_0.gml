var move_y=350
with(obj_cup_full){
	if(room_num == 2){
		if ((0>temp_x || temp_x>380)){
		x=200
		y=move_y
		move_y+=100
		} else{
			x=temp_x
			y=temp_y
		}
	} else{
		x=-200
	}
}