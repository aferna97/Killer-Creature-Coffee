var move_y=350
var move_x = 250
with(obj_cup_full){
	if(room_num == 2){
		if ((0>temp_x || temp_x>380)){
		x=move_x
		y=move_y
		move_y+=100
		} else{
			x=temp_x
			y=temp_y
		}
		if (move_y>room_height-100){
			move_y=350
			move_x-=150
		}
	} else{
		x=-200
	}
}
with (obj_mug_full){
	if (room_num == 2){
		x=obj_mug.x
		y=obj_mug.y
	}
}