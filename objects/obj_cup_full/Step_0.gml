//only change sprites in room 1
if (room_num ==1){
	if (spr_index_cup ==2){
		sprite_index = spr_cup_half	
	} else if (spr_index_cup == 3){
		sprite_index = spr_cup_full	
	}
}
if (follow){
	placed = false
	if (mouse_x>0-sprite_width/2 && mouse_x <room_width+sprite_width/2){
		x= mouse_x
		temp_x = x
	}
	if (mouse_y>420-sprite_height/2 && mouse_y <room_height+sprite_height/2){
		y= mouse_y
		temp_y = y
	} else{
		y= 420-sprite_height/2
		temp_y = 420-sprite_height/2
	}
}