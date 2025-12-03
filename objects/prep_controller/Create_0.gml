if (global.additive1){
	instance_create_layer(280,656,"Instances", obj_dry_additive_1)
}
if (global.additive2){
	instance_create_layer(480,656,"Instances", obj_dry_additive_2)
}if (global.additive3){
	instance_create_layer(680,656,"Instances", obj_dry_additive_3)
}if (global.additive4){
	instance_create_layer(280,544,"Instances", obj_dry_additive_4)
}if (global.additive5){
	instance_create_layer(480,544,"Instances", obj_dry_additive_5)
}if (global.additive6){
	instance_create_layer(680,544,"Instances", obj_dry_additive_6)
}if (global.additive7){
	//instance_create_layer(608,576,"Instances", obj_dry_additive_7)
}if (global.additive8){
	//instance_create_layer(608,672,"Instances", obj_dry_additive_8)
}
with(obj_cup_full){
	if(room_num == 1){
		x=temp_x
		y=temp_y
	} else {
		x=room_width+200
	}
}
var move_x = room_width+200
with(obj_mug_full){
	x = move_x	
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