var move_y=700
var move_x = 100
//deal with persistant mugs
with(obj_mug_full){

	if(room_num == 3){
		if ((0>temp_x || temp_x>room_width)){
			x=move_x
			y=move_y
			move_x+=150
		} else{
			x=temp_x
			y=temp_y
		}
	} else{
		x=room_width+200
	}
	if (move_x>room_width/2){
		move_y-=150
		move_x=100
	}
	
}
var move_off_x = room_width+200
//deal with persistant cups
with(obj_cup_full){
	x=move_off_x
}
//deal with persistant cauldron tops
with(obj_cauldron_top){
	x=move_off_x	
}
with(obj_brew_time){
	x=move_off_x
}
