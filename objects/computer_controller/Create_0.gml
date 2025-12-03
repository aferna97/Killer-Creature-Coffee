//show customers on icon
with (obj_monster_1){
	//change x spawn by monster number
	var icon_x=224
	switch(other.monster){
		case 2:
			icon_x+=160
			break
		case 3:
			icon_x+=320
			break
		case 4:
			icon_x+=480
			break
	}
	//create icon for specific monster
	var inst = instance_create_layer(icon_x,448,"fore",obj_icon_01)
	other.monster+=1
	switch (sprite_index){
		case spr_icon_frank:
			inst.sprite_index=spr_comp_frank
			break
		case spr_icon_ghost:
			inst.sprite_index=spr_comp_ghost
			break
		case spr_icon_invisible:
			inst.sprite_index=spr_comp_invisible
			break
		case spr_icon_mummy:
			inst.sprite_index=spr_comp_mummy
			break
		case spr_icon_vampire:
			inst.sprite_index=spr_comp_vampire
			break
		case spr_icon_werewolf:
			inst.sprite_index=spr_comp_werewolf
			break
		case spr_icon_zombie:
			inst.sprite_index=spr_comp_zombie
			break
	}
	//change safety of icon based on if the monster is a thing monster
	if (thing){
		inst.safety="Danger!"
	} else{
		inst.safety="Safe!"
	}
}

//deal with persistant items
var move_x = room_width+200
