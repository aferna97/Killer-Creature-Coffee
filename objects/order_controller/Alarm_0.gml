if (customers < 3 && global.customers_served<global.customer_today+customers){
	with(obj_parent){
		x-=200
	}
	//randomize monster spawning based on difficulty
	var i = irandom_range(0,100)
	var inst = instance_create_layer(spawn_x,15,"Customer",obj_parent)
	if(i<17){
		inst.sprite_index=spr_zombie
		inst.patience=120	//monster wait time for ordering
		inst.icon=spr_icon_zombie
	} else if (i<34){
		inst.sprite_index=spr_invisible
		inst.patience=60 //monster wait time for ordering
		inst.icon=spr_icon_invisible
	} else if(i<51){
		inst.sprite_index=spr_ghost
		inst.patience=110 //monster wait time for ordering
		inst.icon=spr_icon_ghost
	} else if (i<64){
		inst.sprite_index=spr_mummy
		inst.patience=110 //monster wait time for ordering
		inst.icon=spr_icon_mummy
	} else if (i<77){
		inst.sprite_index=spr_frank
		inst.patience=90 //monster wait time for ordering
		inst.icon=spr_icon_frank
	} else if (i<87){
		inst.sprite_index=spr_werewolf
		inst.patience=90 //monster wait time for ordering
		inst.icon=spr_icon_werewolf
	} else if (i<94){
		inst.sprite_index=spr_headless
		inst.patience=90 //monster wait time for ordering
		inst.icon=spr_icon_headless
	} else if (i<97){
		inst.sprite_index=spr_bigfoot
		inst.patience=120 //monster wait time for ordering
		inst.icon=spr_icon_bigfoot
	} else {
		inst.sprite_index=spr_vampire
		inst.patience=60 //monster wait time for ordering
		inst.icon=spr_icon_vampire
	}
	
	customers +=1
}
alarm[0]=random_range(order_time_min, order_time_max) * game_get_speed(gamespeed_fps)