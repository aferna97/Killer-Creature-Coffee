follow = false
show = false

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
	var cauldron_top = instance_create_layer(cauldron_on.x,cauldron_on.y,"brew", obj_cauldron_top)
	cauldron_on.brewing = true
	cauldron_top.brew_ingre = ingredients
	cauldron_top.brew_prep_amount = spr_index_cup
	global.cupsInBrew-=1
	instance_destroy(self)	
}