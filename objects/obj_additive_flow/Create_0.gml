if (spr_index_flow==2){
	sprite_index = spr_additive_flow_2	
	pow=12
} else if (spr_index_flow==3){
	sprite_index = spr_additive_flow_3	
	pow=13
} else if (spr_index_flow == 4){
	sprite_index = spr_additive_flow_4
	pow=14
} 
instance_create_layer(x-220,y,"foreground", obj_additive_amount)
alarm[0] = 8*game_get_speed(gamespeed_fps)