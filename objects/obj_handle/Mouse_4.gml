audio_play_sound(sfx_twisting,10,0)
var speed_handle = 1
//halves image speed of handle if chainsaw motor is unlocked
if (global.chainsaw_motor){
	speed_handle=0.5
}
instance_create_layer(x,y,"Instances",obj_handle_ani,{image_speed: speed_handle})
instance_destroy(self)