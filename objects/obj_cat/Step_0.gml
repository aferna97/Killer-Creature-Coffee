if (!angry && customer_walk_out==1){
	instance_create_layer(self.x+50,self.y-20,"Instances_foreground",obj_cat_angry)
	audio_play_sound(sfx_hiss,10,0)
	angry = true
} else if (customer_walk_out ==2 && !global.cat_talisman){
	//if customer walkout is 2 and cat talisman not unlocked, lose health and reset cat
	//insert attack animation
	instance_destroy(obj_cat_angry)
	health -=10
	angry = false
	customer_walk_out = 0
} else if (customer_walk_out==3 && global.cat_talisman){
	//if custoemr walkout is 3 and cat talisman is unlocked, lose health and reset cat
	instance_destroy(obj_cat_angry)
	health -=10
	angry = false
	customer_walk_out = 0
}