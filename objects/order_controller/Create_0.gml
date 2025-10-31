alarm[0]=2 * game_get_speed(gamespeed_fps)
//move all persistant items off screen
var move_x = room_width+200
with(obj_cup_full){
	x=move_x
} with(obj_mug_full){
	x=move_x
}