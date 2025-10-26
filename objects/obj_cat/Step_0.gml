if (!angry && customer_walk_out==1){
	instance_create_layer(self.x+50,self.y-20,"Instances_foreground",obj_cat_angry)
	angry = true
} else if (customer_walk_out ==2){
	//insert attack animation
	
	instance_destroy(obj_cat_angry)
	health -=10
	angry = false
	customer_walk_out = 0
}