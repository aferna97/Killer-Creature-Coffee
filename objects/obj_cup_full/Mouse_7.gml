follow = false
placed = true
instance_destroy(obj_delete)
if ((1229<x && x<room_width+sprite_width/2) && (500<y && y<660)){
	if (global.cupsInBrew < 9){
		x=room_width+200
		room_num=2
		global.cupsInBrew +=1
	}
} else if ((1229<x && x<room_width+sprite_width/2) && (420-sprite_height/2<y && y<450)){
	instance_destroy(self)
}
if (place_meeting(x,y,obj_cauldron)){
	instance_create_layer(obj_cauldron.x,obj_cauldron.y,"brew", obj_cauldron_top)
	obj_cauldron_top.brew_bean_1 = has_bean_1
	obj_cauldron_top.brew_bean_2 = has_bean_2
	obj_cauldron_top.brew_bean_3 = has_bean_3
	obj_cauldron_top.brew_dry_1 = has_dry_1
	obj_cauldron_top.brew_dry_2 = has_dry_2
	obj_cauldron_top.brew_dry_3 = has_dry_3
	obj_cauldron_top.brew_dry_4 = has_dry_4
	obj_cauldron_top.brew_dry_5 = has_dry_5
	obj_cauldron_top.brew_dry_6 = has_dry_6
	obj_cauldron_top.brew_dry_7 = has_dry_7
	obj_cauldron_top.brew_dry_8 = has_dry_8
	global.cupsInBrew-=1
	instance_destroy(self)	
}