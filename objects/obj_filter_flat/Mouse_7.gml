if (clicked%2 == 1){
	x=obj_mug.x
	y=obj_mug.y
} else{
	if (poured){
		instance_create_layer(x,y-100, "foreground", obj_filter_bunched)	
	}
	x=og_x
	y=og_y
}