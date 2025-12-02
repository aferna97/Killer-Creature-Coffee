angry = true
//change sprite to angry version if enough time has passed
switch(sprite_index){
	case spr_bigfoot:
		sprite_index=spr_bigfoot_angry
		break
	case spr_frank:
		sprite_index=spr_frank_angry
		break
	case spr_ghost:
		sprite_index=spr_ghost_angry
		break
	case spr_headless:
		sprite_index=spr_headless_angry
		break
	case spr_invisible:
		sprite_index=spr_invisible_angry
		break
	case spr_mummy:
		sprite_index=spr_mummy_angry
		break
	case spr_vampire:
		sprite_index=spr_vampire_angry
		break
	case spr_werewolf:
		sprite_index=spr_werewolf_angry
		break
	case spr_zombie:
		sprite_index=spr_zombie_angry
		break
}
alarm[2] = walkout_time * game_get_speed(gamespeed_fps)
