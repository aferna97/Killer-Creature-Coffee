//timer for waiting too long and not ordering
if(((wait_time * game_get_speed(gamespeed_fps)) > 4) && (order_controller.ordering))
{
	//angry = true
	alarm[1] = walkout_time * game_get_speed(gamespeed_fps) //customer gets angry
}