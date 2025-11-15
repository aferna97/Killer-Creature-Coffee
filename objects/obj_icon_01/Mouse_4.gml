if (!computer_controller.selected_monster){
	computer_controller.selected_monster = true
	obj_gun.ask_question=false
	instance_create_layer(500,250,"Instances", obj_scan_time)
	x=200
	y=y-200
	//show it is safe or unsafe
	alarm[0]=scan_time*game_get_speed(gamespeed_fps)
}