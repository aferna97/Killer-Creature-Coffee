//set persistent
persistent=true
//set alarm for patience
//if possessed radio is purchased, patience is increased by 1.2 always
if (global.possessed_radio && !global.monkeys_paw){
	patience=patience*1.2
} 
//if monkey's paw is purchased without possessed radio, reduce patience by 0.8
if (global.monkeys_paw && !global.possessed_radio){
	patience=patience*0.8
}
alarm[0]=(patience/2)*game_get_speed(gamespeed_fps)//will creat warning for half time
alarm[1]=patience*game_get_speed(gamespeed_fps)//will have the customer attack