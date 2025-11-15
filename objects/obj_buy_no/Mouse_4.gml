//pick clicked upgrade
var clicked_upgrade
with(obj_upgrade_01){
	if (clicked_on){
		clicked_upgrade = self
	}
}
clicked_upgrade.clicked_on = false
//close buying menu
instance_destroy(obj_buy_box)
instance_destroy(obj_buy_no)
instance_destroy(self)
