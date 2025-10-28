follow = false

	placed = true
	global.held = false

instance_destroy(obj_delete)
if ((1229<x && x<room_width+sprite_width/2) && (500<y && y<660)){
	if (global.cupsInBrew < 9 && room_num == 1){
		x=room_width+200
		room_num=2
		global.cupsInBrew +=1
	}
} else if ((1229<x && x<room_width+sprite_width/2) && (420-sprite_height/2<y && y<450)){
	instance_destroy(self)
}
var cauldron_on = instance_place(x,y,obj_cauldron)
if (cauldron_on!= noone && !cauldron_on.brewing){
	instance_create_layer(cauldron_on.x,cauldron_on.y,"brew", obj_cauldron_top)
	cauldron_on.brewing = true
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