follow = false
instance_destroy(obj_delete)
if ((1229<x && x<room_width+sprite_width/2) && (500<y && y<660)){
	
	x=room_width+200
	room_num=2
} else if ((1229<x && x<room_width+sprite_width/2) && (420-sprite_height/2<y && y<450)){
	instance_destroy(self)
}