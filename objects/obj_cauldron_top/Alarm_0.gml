sprite_index = spr_cauldron_top_brew
instance_create_layer(x-200,y,"brew", obj_burn_time)
//variable burn_time, be sure to change obj_burn_time with changes to burn_timee
//alarm 1 = coffee burned
alarm[1]= burn_time *game_get_speed(gamespeed_fps)