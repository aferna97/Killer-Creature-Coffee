if (!has_brew && !has_burn){
	if (obj_cauldron_top.sprite_num == 1){
		var i = instance_nearest(x,y,obj_cauldron_top)
		instance_destroy(i)
		var j = instance_nearest(x,y,obj_burn_time)
		instance_destroy(j)
		var associated_cauldron = instance_nearest(x,y,obj_cauldron)
		associated_cauldron.brewing = false
		has_brew = true
		sprite_index = spr_ladle_brew
	} else if(obj_cauldron_top.sprite_num == 2){
		var i = instance_nearest(x,y,obj_cauldron_top)
		instance_destroy(i)
		var associated_cauldron = instance_nearest(x,y,obj_cauldron)
		associated_cauldron.brewing = false
		has_burn = true
		sprite_index = spr_ladle_burn
	}
}