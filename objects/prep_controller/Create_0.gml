if (global.additive1){
	instance_create_layer(128,576,"Instances", obj_dry_additive_1)
}
if (global.additive2){
	instance_create_layer(128,672,"Instances", obj_dry_additive_2)
}if (global.additive3){
	instance_create_layer(288,576,"Instances", obj_dry_additive_3)
}if (global.additive4){
	instance_create_layer(288,672,"Instances", obj_dry_additive_4)
}if (global.additive5){
	instance_create_layer(448,576,"Instances", obj_dry_additive_5)
}if (global.additive6){
	instance_create_layer(448,672,"Instances", obj_dry_additive_6)
}if (global.additive7){
	instance_create_layer(608,576,"Instances", obj_dry_additive_7)
}if (global.additive8){
	instance_create_layer(608,672,"Instances", obj_dry_additive_8)
}
var move_y=350
with(obj_cup_full){
	if(room_num == 1){
		x=temp_x
		y=temp_y
	} else {
		x=room_width+200
	}
}