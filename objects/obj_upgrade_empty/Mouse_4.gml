if (!bought && !instance_exists(obj_buy_box)){
	clicked_on=true
	obj_upgrade_empty.draw=false
	instance_create_layer(768,384,"buying", obj_buy_no)
	instance_create_layer(448,384,"buying", obj_buy_yes)
	instance_create_layer(600,288,"buying",obj_buy_box)
}