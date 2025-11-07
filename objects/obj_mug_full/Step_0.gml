if (room == Brew){
	if ((obj_filter_flat.x==x && obj_filter_flat.y==y) || instance_exists(obj_filter_bunched)){
		mug_follow=false
		mug_placed = true
		show_mug = false
		instance_destroy(obj_delete)
	}
}
if (mug_follow){
	mug_placed = false
	if (mouse_x>0 && mouse_x <room_width){
		x= mouse_x
		temp_x = x
	}
	if (mouse_y>0 && mouse_y <room_height){
		y= mouse_y
		temp_y=y
	} 
}