var associated_top =instance_nearest(x+100,y,obj_cauldron_top)

if (sprite_index == spr_brew_time){
	sprite_index = spr_burn_time
	image_speed=0.5		//slow down burn time by slowing animation
	associated_top.sprite_index = spr_cauldron_top_brew
	associated_top.sprite_num = 1	//sprite_num is 1 when brewed
} else{
	associated_top.sprite_index = spr_cauldron_top_burn
	associated_top.sprite_num = 2	//sprite_num = 2 when burnt
	instance_destroy(self)
}