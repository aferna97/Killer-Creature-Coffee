var num_on_tray = 0
with(obj_mug_full){
	if (on_tray){
		num_on_tray+=1
	}
}
if (num_on_tray <=3){
	//create bubble
	instance_create_layer(700,450,"foreground", obj_customer_select)
	//deal with obj_monster_1
	with (obj_monster_1){
		switch(other.customer_num){
			case 1:
				x=550
				y=300
				break
			case 2:
				x=850
				y=300
				break
			case 3:
				x=550
				y=600
				break
			case 4:
				x=850
				y=600
				break
		}
		other.customer_num+=1
		inBubble=true
	}
	customer_num=1
}