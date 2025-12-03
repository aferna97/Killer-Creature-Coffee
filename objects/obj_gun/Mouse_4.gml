//set select_shoot to opposite. Allowing user to click to shoot and click again to not shoot
select_shoot=!select_shoot
//if shooting, create obj_icon_shoot over each icon slot
if(select_shoot){
	instance_create_layer(224,448,"target", obj_icon_shoot)
	instance_create_layer(384,448,"target", obj_icon_shoot)
	instance_create_layer(544,448,"target", obj_icon_shoot)
	instance_create_layer(704,448,"target", obj_icon_shoot)
} else{	//if not shooting, delete all obj_icon_shoot's
	with(obj_icon_shoot){
		instance_destroy(self)
	}
}