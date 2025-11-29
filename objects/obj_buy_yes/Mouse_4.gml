//get clicked upgrade
var clicked_upgrade=obj_upgrade_empty
with(obj_upgrade_empty){
	if (clicked_on){
		clicked_upgrade = self
	}
}
if (clicked_upgrade.price<=global.tips){
	//buy upgrade
	clicked_upgrade.bought=true
	clicked_upgrade.clicked_on = false
	obj_upgrade_empty.draw=true
	clicked_upgrade.description=""
	clicked_upgrade.price=0
	//make global variable true(it's bought)
	switch(clicked_upgrade.sprite_index){
		case spr_upgrade_01: 
			global.beating_heart = true
			health+=10
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_02: 
			global.pyro_eyes = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_03: 
			global.faulty_bullets = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_04: 
			global.necronomicon = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_05: 
			global.terminator = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_06: 
			global.cauldron_1 = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_07: 
			global.cauldron_2 = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_08: 
			global.PKE = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_09: 
			global.dracula = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_10: 
			global.possessed_radio = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_11: 
			global.giant_rusty_nail = true
			instance_create_layer(-200,745,"buying", obj_upgrade_nail)
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_12: 
			global.cat_muzzle = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_13: 
			global.arsenic = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_14: 
			global.monkeys_paw = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_15: 
			global.chainsaw_motor = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_16: 
			global.cat_talisman = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_17: 
			global.rat = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_18: 
			global.spine_chiller = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_19: 
			global.gingerbead_man = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
		case spr_upgrade_20: 
			global.monster_rifle = true
			clicked_upgrade.sprite_index = spr_upgrade_empty
			break
	}
	//update tips total
	global.tips-=clicked_upgrade.price
	//close buying menu
	instance_destroy(obj_buy_box)
	instance_destroy(obj_buy_no)
	instance_destroy(self)
}