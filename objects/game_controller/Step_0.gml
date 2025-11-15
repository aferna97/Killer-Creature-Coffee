//go to upgrade room on night one when 5 customers served
if (room != upgrades && global.night ==1 && global.customers_served == 5){
	//changes night to 2 for after upgrade room
	global.night = 2
	//resets customer counters
	global.customers_served = 0
	global.customers = 0
	
	room_goto(6)	
} 

//go to upgrade room on night two when 7 customers served
if (room != upgrades && global.night ==2 && global.customers_served == 7){
	//changes night to 3 for after upgrade room
	global.night = 3
	//resets customer counters
	global.customers_served = 0
	global.customers = 0
	
	room_goto(6)	
} 