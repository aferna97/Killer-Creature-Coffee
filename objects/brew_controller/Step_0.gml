/// @description Insert description here
// You can write your code in this editor
step_count= step_count+1
seconds = floor(step_count / game_get_speed(gamespeed_fps))

/*
var count = maxTime - seconds

if((step_count / game_get_speed(gamespeed_fps) % 15) && (count == 59))
{
	instance_create_layer(310, 60, "Info", obj_cat_small)
	object_set_visible(obj_cat_small, true)
}
else
{
	object_set_visible(obj_cat_small,false)
}
*/