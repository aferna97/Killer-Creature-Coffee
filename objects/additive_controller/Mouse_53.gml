if (instance_exists(obj_customer_select) && !click_bubble){
	instance_destroy(obj_customer_select)
	instance_destroy(obj_monster_1)
	click_bubble = true
} else{
	click_bubble = false	
}