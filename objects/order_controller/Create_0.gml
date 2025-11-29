alarm[0]=2 * game_get_speed(gamespeed_fps)
//move all persistant items off screen
var move_x = room_width+200
with(obj_cup_full){
	x=move_x
} with(obj_mug_full){
	x=move_x
}

//show rusty nail if unlocked
if (global.giant_rusty_nail){
	instance_create_layer(100,680, "instances_foreground", obj_upgrade_monkey)
}
//show cat talisman if unlocked
if (global.cat_talisman){
	instance_create_layer(280,700, "instances_foreground", obj_upgrade_cat_talisman)
}
//show rat if unlocked
if (global.rat){
	instance_create_layer(400,720, "instances_foreground", obj_upgrade_rat)
}
//show spine chiller if unlocked
if (global.spine_chiller){
	instance_create_layer(500,670, "instances_foreground", obj_upgrade_spine_chiller)
}

//deal with persistant cauldron tops
with(obj_cauldron_top){
	x=move_x	
}
with(obj_brew_time){
	x=move_x
}
//deal with persistant monster icons
with(obj_monster_1){
	x=move_x
}
//nail
with(obj_upgrade_nail){
	x=120
}

