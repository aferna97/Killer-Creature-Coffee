//get clicked upgrade
var clicked_upgrade
with(obj_upgrade_01){
	if (clicked_on){
		clicked_upgrade = self
	}
}
if (clicked_upgrade.price<=global.tips){
	//buy upgrade
	clicked_upgrade.bought=true
	clicked_upgrade.clicked_on = false
	//update tips total
	global.tips-=clicked_upgrade.price
	//close buying menu
	instance_destroy(obj_buy_box)
	instance_destroy(obj_buy_no)
	instance_destroy(self)
}