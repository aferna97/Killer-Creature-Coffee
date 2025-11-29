with (obj_placeholder){
	//if unused, destroy instance of bigfoot
	if (!other.used && (sprite_index == spr_bigfoot || sprite_index==spr_bigfoot_angry)){
		other.used = true
		instance_destroy(self)
		order_controller.customers-=1
	}
}