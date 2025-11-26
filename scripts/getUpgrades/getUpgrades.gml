function getUpgrades(){
	var upgrade_array = generate_array()
	with(obj_upgrade_empty){
		var i = irandom_range(0,array_length(upgrade_array)-1)
		switch (upgrade_array[i]){
			case "heart": 
			//change to heart upgrade
			sprite_index=spr_upgrade_01
			//set price
			price=0
			//set description
			description="Increase Lives by one"
			break
			case "eye": 
			//change to pyromantic eye upgrade
			sprite_index=spr_upgrade_02
			//set price
			price=0
			description="Adds a button in the brewing room that when held increases the speed of brewing by 1.5"
			break
			case "bullets": 
			//change to faulty bullet upgrade
			sprite_index=spr_upgrade_03
			//set price
			price=0
			description="Saves you from being attacked and losing a life if you shoot a regular monster (and not the “Thing”) Can only be used once"
			break
			case "necro": 
			//change to necromonicon upgrade
			sprite_index=spr_upgrade_04
			//set price
			price=0
			description="Increases tips from undead enemies (Zombie, Mummy, Frankenstein’s)"
			break
			case "terminator": 
			//change to terminator parts upgrade
			sprite_index=spr_upgrade_05
			//set price
			price=0
			description="Increases scanning speed by 1.2"
			break
			case "caul1": 
			//change to cauldron I upgrade
			sprite_index=spr_upgrade_06
			//set price
			price=0
			description="Adds another cauldron to the brewing room"
			break
			case "caul2": 
			//change to cauldron II upgrade
			sprite_index=spr_upgrade_07
			//set price
			price=0
			description="Adds another cauldron to the brewing room"
			break
			case "PKE": 
			//change to PKE meter upgrade
			sprite_index=spr_upgrade_08
			//set price
			price=0
			description="Indicates if there is a “Thing” waiting for an order in the computer room if there are three or more customers waiting and at least one of them is the \“Thing\”"
			break
			case "dracula": 
			//change to dracula's curse upgrade
			sprite_index=spr_upgrade_09
			//set price
			price=0
			description="Makes Vampires more lenient when reviewing their orders"
			break
			case "radio": 
			//change to possessed curse upgrade
			sprite_index=spr_upgrade_10
			//set price
			price=0
			description="Increases wait time for all monsters by 1.2"
			break
			case "giant": 
			//change to giant rusty nail upgrade
			sprite_index=spr_upgrade_11
			//set price
			price=0
			description="Prevents a single encounter with Bigfoot Can only be used once"
			break
			case "cat muzzle": 
			//change to cat muzzle upgrade
			sprite_index=spr_upgrade_12
			//set price
			price=0
			description="Reduces unnecessary commentary from the manager when asking for help (a.k.a. Makes them shut up)"
			break
			case "arsenic": 
			//change to arsenic upgrade
			sprite_index=spr_upgrade_13
			//set price
			price=0
			description="Prevents feeding the “Thing” a single time if player gives it its order"
			break
			case "monkey": 
			//change to monkeys paw upgrade
			sprite_index=spr_upgrade_14
			//set price
			price=0
			description="Decreases wait time by 0.8 for all monsters in exchange for a boost in tips by 1.2 increase, when used alongside the Possessed Radio upgrade boost negates decrease in wait time, resulting in regular wait times."
			break
			case "chainsaw": 
			//change to chainsaw motor upgrade
			sprite_index=spr_upgrade_15
			//set price
			price=0
			description="Halves the time it takes for beans to be grinded in the prep room"
			break
			case "cat talisman": 
			//change to cat talisman upgrade
			sprite_index=spr_upgrade_16
			//set price
			price=0
			description="Increases the amount of customers that can leave per night before being attacked by the manager from 2 to 3"
			break
			case "rat": 
			//change to rat upgrade
			sprite_index=spr_upgrade_17
			//set price
			price=0
			description="Earn pity cash, ($0.10 - $0.25) when throwing away grinds and coffee."
			break
			case "spine": 
			//change to spine chiller upgrade
			sprite_index=spr_upgrade_18
			//set price
			price=0
			description="Increases the period of time it takes for a coffee to burn in the brewing room"
			break
			case "gingerdead": 
			//change to gingerdead man upgrade
			sprite_index=spr_upgrade_19
			//set price
			price=0
			description="Add a limited resource of one cookie per night that can be dragged onto an order to increase its overall score, making it easier to satisfy less lenient customers."
			break
			case "monster hunting": 
			//change to monster hunting rifle upgrade
			sprite_index=spr_upgrade_20
			//set price
			price=0
			description="Earn 5 times the tips from successfully shooting the “Thing”, but shooting regular monster results in a game over"
			break
			default: 
			//change to empty if it matches no other upgrade
			sprite_index=spr_upgrade_empty
			//set price
			price = 0
			break
		}
		//remove item from array so that there are no duplicates at once
		array_delete(upgrade_array,i,1)
	}
}

function generate_array(){
	//if variable is false, add to array
	var array_upgrade=[]
	if (!global.beating_heart){
		array_push(array_upgrade,"heart")
	} if (!global.pyro_eyes){
		array_push(array_upgrade,"eye")
	} if (!global.faulty_bullets){
		array_push(array_upgrade,"bullets")
	} if (!global.necronomicon){
		array_push(array_upgrade,"necro")
	} if (!global.terminator){
		array_push(array_upgrade,"terminator")
	} if (!global.cauldron_1){
		array_push(array_upgrade,"caul1")
	} if (!global.cauldron_2){
		array_push(array_upgrade,"caul2")
	} if (!global.PKE){
		array_push(array_upgrade,"PKE")
	} if (!global.dracula){
		array_push(array_upgrade,"dracula")
	} if (!global.possessed_radio){
		array_push(array_upgrade,"radio")
	} if (!global.giant_rusty_nail){
		array_push(array_upgrade,"giant")
	} if (!global.cat_muzzle){
		array_push(array_upgrade,"cat muzzle")
	} if (!global.arsenic){
		array_push(array_upgrade,"arsenic")
	} if (!global.monkeys_paw){
		array_push(array_upgrade,"monkey")
	} if (!global.chainsaw_motor){
		array_push(array_upgrade,"chainsaw")
	} if (!global.cat_talisman){
		array_push(array_upgrade,"cat talisman")
	} if (!global.rat){
		array_push(array_upgrade,"rat")
	} if (!global.spine_chiller){
		array_push(array_upgrade,"spine")
	} if (!global.gingerbead_man){
		array_push(array_upgrade,"gingerdead")
	} if (!global.monster_rifle){
		array_push(array_upgrade,"monster hunting")
	}
	return array_upgrade;
}