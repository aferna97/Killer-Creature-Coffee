//get rid of the info objects
if (room!=MainMenu && room!=upgrades){
	instance_destroy(obj_info)
	instance_destroy(obj_wait_time)
	//move obj_monster off screen
	with (obj_monster_1){
		x= -400
	}
}