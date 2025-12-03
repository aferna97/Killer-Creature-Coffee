if (!computer_controller.selected_monster){
	computer_controller.selected_monster = true
	if(!obj_gun.select_shoot){		//if not shooting, scan
		obj_gun.ask_question=false
		instance_create_layer(500,250,"Instances", obj_scan_time)
		//decrease scan time if terminator parts unlocked
		if (global.terminator){
			obj_scan_time.image_speed=(1/1.2)
		}
		x=200
		y=y-200
		//show it is safe or unsafe
		alarm[0]=scan_time*game_get_speed(gamespeed_fps)
	} else{		//if shooting, play shooting scene
		///////insert shooting scene////////
		if (safety=="Safe!"){	//if shooting monster that is not thing
			if (global.monster_rifle){
				//if monster rifle unlocked, set health to 0. die
				health=0
			} else if (global.faulty_bullets && !global.faulty_bullets_used){
				//if unlocked faulty bullets and havent used it
				global.faulty_bullets_used=true		//use up faulty bullet
				///////play saved by fault bullets animation/////////
			} else {
				///////play attack animation/////////
				health-=10	//lose a life
			}
		} else if (safety=="Danger!"){
			/////////play thing running away animation////////
			global.tips+=1		//increase tip for getting thing
			if (global.monster_rifle){
				//if monster rifle unlocked, increase tip by 4, so that player gets 5 times base tip
				global.tips+=4
			}
		}
		computer_controller.selected_monster=false
		global.customers_served+=1	//monster is "served"
		instance_destroy(self)		//monster is gone whether it is thing or not
	}
}