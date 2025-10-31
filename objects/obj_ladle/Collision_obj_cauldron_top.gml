if (!has_brew && !has_burn){
	var associated_top = instance_nearest(x,y,obj_cauldron_top)
	if (associated_top.sprite_num == 1){
		var j = instance_nearest(associated_top.x-50,associated_top.y-10,obj_burn_time)
		instance_destroy(j)
		var associated_cauldron = instance_nearest(x,y,obj_cauldron)
		associated_cauldron.brewing = false
		ladle_ingre = associated_top.brew_ingre
		instance_destroy(associated_top)
		has_brew = true
		sprite_index = spr_ladle_brew
	} else if(associated_top.sprite_num == 2){
		var i = instance_nearest(associated_top.x-50,associated_top.y-10,obj_cauldron_top)
		instance_destroy(i)
		var associated_cauldron = instance_nearest(x,y,obj_cauldron)
		associated_cauldron.brewing = false
		has_burn = true
		sprite_index = spr_ladle_burn
	}
}