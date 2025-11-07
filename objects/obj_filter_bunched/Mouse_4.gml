filter+=1
if (filter >4){
	var associated_mug = instance_nearest(x,y,obj_mug_full)
	associated_mug.filtered = true
	instance_destroy(self)	
}