instance_create_layer(x-200,y,"brew", obj_brew_time)
//variable brew_time, be sure to change obj_brew_time with changes to brew_timee
//alarm 0 = coffee brewed
alarm[0] = brew_time* game_get_speed(gamespeed_fps)