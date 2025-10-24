if (customers < 3){
	instance_create_layer(spawn_x,15,"Instances",obj_placeholder)
	spawn_x +=200
	customers +=1
}
alarm[0]=random_range(5,10) * game_get_speed(gamespeed_fps)