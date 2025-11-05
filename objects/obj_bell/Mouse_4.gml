var num_on_tray = 0
with(obj_mug_full){
	if (on_tray){
		num_on_tray+=1
	}
}
if (num_on_tray <=3){
	instance_create_layer(700,450,"foreground", obj_customer_select)
}