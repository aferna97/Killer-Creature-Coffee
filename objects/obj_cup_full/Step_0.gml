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