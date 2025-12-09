//show current customers waiting in main rooms
if (room!=MainMenu && room!=upgrades && room!=Reviewing && room!=Credits){
	//deal with bubble if it exists
	if (instance_exists(obj_customer_select) && !additive_controller.click_bubble){
		//destroy bubble and deal with obj_monster
		instance_destroy(obj_customer_select)
		with (obj_monster_1){
			inBubble=false
			x= -400
		}
		additive_controller.click_bubble = true
	}
	//done with bubble
	moveX=160
	instance_create_layer(64,64,"Info_back", obj_info)
	//show each monster's progress in waiting time
	with (obj_monster_1){
		x=other.moveX
		y=160
		var wait = instance_create_layer(other.moveX,288,"Info", obj_wait_time)
		wait.image_index=floor(((self.step_count/game_get_speed(gamespeed_fps))/patience)*10)	//get frame by dividing stepcount by frames in animation
		switch(patience){
			case 60:
				wait.image_speed =1	//image speed is already set for 60 seconds
				break
			case 90:
				wait.image_speed=(2/3)	//image set to play for 90 seconds
				break
			case 110:
				wait.image_speed=(60/110)	//image set to play for 110 seconds
				break
			case 120:
				wait.image_speed=0.5	//image set to play for 120 seconds
				break
		}
		other.moveX+=200
	}
}