if (customers < 3 && global.customers_served<global.customer_today+customers){
	with(obj_parent){
		x-=200
	}
	//randomize monster spawning based on difficulty
	var i = irandom_range(0,100)
	//if i%10==0 monster is a thing monter
	var inst = instance_create_layer(spawn_x,15,"Customer",obj_parent,{thing: (i%10==0)})
	if(i<20){
		inst.sprite_index=spr_zombie
		inst.patience=120	//monster wait time for ordering
		inst.icon=spr_icon_zombie
		inst.noise=sfx_zombie
	} else if (i<40){
		inst.sprite_index=spr_invisible
		inst.patience=60 //monster wait time for ordering
		inst.icon=spr_icon_invisible
		inst.noise=sfx_invis
	} else if(i<60){
		inst.sprite_index=spr_ghost
		inst.patience=110 //monster wait time for ordering
		inst.icon=spr_icon_ghost
		inst.noise=sfx_ghost
	/*} else if (i<72){
		inst.sprite_index=spr_mummy
		inst.patience=110 //monster wait time for ordering
		inst.icon=spr_icon_mummy */
	} else if (i<84){
		inst.sprite_index=spr_frank
		inst.patience=90 //monster wait time for ordering
		inst.icon=spr_icon_frank
		inst.noise=sfx_frank
	} else if (i<96){
		inst.sprite_index=spr_werewolf
		inst.patience=90 //monster wait time for ordering
		inst.icon=spr_icon_werewolf
		inst.noise=sfx_werewolf
	}  else {
		inst.sprite_index=spr_vampire
		inst.patience=60 //monster wait time for ordering
		inst.icon=spr_icon_vampire
		inst.noise=sfx_vamp
	}
	
	customers +=1
}
//if PKE meter unlocked and 3 monsters in room, show if there is a thing in the room
if (global.PKE && customers==3){
	with(obj_parent){
		if (thing){
			other.thingInRoom=true
		}
	}
}
alarm[0]=random_range(order_time_min, order_time_max) * game_get_speed(gamespeed_fps)