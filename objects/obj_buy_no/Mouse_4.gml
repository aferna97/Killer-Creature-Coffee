//pick clicked upgrade
var clicked_upgrade
with(obj_upgrade_empty){
	if (clicked_on){
		clicked_upgrade = self
	}
}
obj_upgrade_empty.draw=true
clicked_upgrade.clicked_on = false
//close buying menu
instance_destroy(obj_buy_box)
instance_destroy(obj_buy_yes)
instance_destroy(self)
