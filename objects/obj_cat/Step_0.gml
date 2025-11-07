//audio_play_sound(Sound_purring,5,0)

if (!angry && customer_walk_out==1){
	instance_create_layer(self.x+50,self.y-20,"Instances_foreground",obj_cat_angry)
	angry = true
	//audio_stop_sound(Sound_purring)
} else if (customer_walk_out ==2){
	//insert attack animation
	
	//audio_stop_sound(Sound_purring)
	instance_destroy(obj_cat_angry)
	health -=10
	angry = false
	customer_walk_out = 0
}