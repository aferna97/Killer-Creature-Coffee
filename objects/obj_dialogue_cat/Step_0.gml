//dont show up in room order , computer, and upgrade
if (room==Order || room==Computer || room == upgrades){
	instance_destroy(self)
}