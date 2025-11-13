//<<<<<<< Updated upstream
alarm[0]=2 * game_get_speed(gamespeed_fps)
//move all persistant items off screen
var move_x = room_width+200
with(obj_cup_full){
	x=move_x
} with(obj_mug_full){
	x=move_x
}
//deal with persistant cauldron tops
with(obj_cauldron_top){
	x=move_x	
}
with(obj_brew_time){
	x=move_x
}
//=======
alarm[0]= 2 * game_get_speed(gamespeed_fps)
//>>>>>>> Stashed changes
