if (instance_exists(obj_customer_select) && !click_bubble){
	//destroy bubble and deal with obj_monster
	instance_destroy(obj_customer_select)
	with (obj_monster_1){
		inBubble=false
		x= -400
	}
	click_bubble = true
} else{
	click_bubble = false	
}