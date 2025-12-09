//go to upgrade room on night one when 5 customers served
if (room != upgrades && global.customers_served == global.customer_today){
	//changes night to 2 for after upgrade room
	global.night += 1
	//resets customer counters and gingerdead
	global.customers_served = 0
	global.customers = 0
	global.gingerdead_used=false
	//increase customers supposed to be served
	var i=irandom_range(1,2)
	global.customer_today+=i
	
	room_goto(7)
} 
