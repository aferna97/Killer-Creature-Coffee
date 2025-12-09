if (place_meeting(x,y,obj_icon_01)){	//if on a monster icon
	var inst = instance_nearest(x,y,obj_icon_01)
	global.customers_served+=1	//save as served
	if (inst.safety=="Safe!"){
		health-=10	//lose health
	} else{
		
	}
}