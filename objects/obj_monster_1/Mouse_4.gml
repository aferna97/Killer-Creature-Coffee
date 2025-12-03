//rating only in additive room for selection
if (room==Additive && inBubble){
	//increase vampire leniency if draculas curse is unlocked
	if (global.dracula && (sprite_index=spr_icon_vampire)){
		lenient+=0.1
	}
	//go through all the mugs and if they are on the tray, make the rating
	with(obj_mug_full){
		if (on_tray){
			other.num_of_mugs+=1
			ratings(self, other)
		}
	}
	//increase overall score of order after using 
	//gingerdead to make the less lenient customers easier.
	with(obj_upgrade_gingerdead){
		if (on_tray){
			other.tip=other.tip*1.5
			other.rating=other.rating+(0.5*other.num_of_mugs)
			global.gingerdead_used=true
			instance_destroy(self)
		}
	}
	//increase tip if necronomicon is unlocked and 
	//sprite index is zombie, mummy, or frankenstein
	if ((global.necronomicon) && (sprite_index==spr_icon_zombie || sprite_index==spr_icon_frank || sprite_index=spr_icon_mummy)){
		tip=tip*1.1
	}
	//increase tip of all if monkey's paw is unlocked
	if (global.monkeys_paw){
		tip=tip*1.2
	}
	
	if (num_of_mugs!=0){
		rating=rating/num_of_mugs
	}
	//save customer as served for today
	global.customers_served+=1
	if (!thing){
		global.tips+=tip
		//play review
	} else{
		if (global.arsenic && !global.arsenic_used){	//if arsenic unlocked and not used, do nothing
			global.arsenic_used=true	//set as used
			//////play thing dealt with by arsenic////////////
		} else{		//if arsenic not used, add to count
			global.things_served+=1
			///////play thing review with no tip and feed counter increases//////
		}
	}
	//destroy self afterwords
}