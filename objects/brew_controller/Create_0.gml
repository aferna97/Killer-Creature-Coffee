var move_y=350
var move_x = 250
with(obj_cup_full){
	if(room_num == 2){
		if ((0>temp_x || temp_x>380)){
		x=move_x
		y=move_y
		move_y+=100
		} else{
			x=temp_x
			y=temp_y
		}
		if (move_y>room_height-100){
			move_y=350
			move_x-=150
		}
	} else{
		x=-200
	}
}
with (obj_mug_full){
	if (room_num == 2){
		x=obj_mug.x
		y=obj_mug.y
	} else{
		x=room_width+200
		y=room_width+200
	}
}
move_x=room_width+200
//deal with persistant cauldron tops
with(obj_cauldron_top){
	x=og_top_x
	y=og_top_y
}
with(obj_brew_time){
	x=og_brew_x
	y=og_brew_y
}
//deal with persistant monster icons
with(obj_monster_1){
	x=move_x
}

//add pyromantic eyes if unlocked
if (global.pyro_eyes){
	instance_create_layer(250,700,"brew",obj_upgrade_eye)	
}
//add 5th cauldron if unlocked
if (global.cauldron_1){
	instance_create_layer(544,672, "Instances", obj_cauldron)	
}
//add 6th cauldron if unlocked
if (global.cauldron_2){
	instance_create_layer(832,672, "Instances", obj_cauldron)	
}