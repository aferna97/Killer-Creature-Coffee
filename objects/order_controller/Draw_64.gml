if (global.PKE && customers==3){
	draw_set_font(txt_default)
	draw_set_colour(c_white)
	if (thingInRoom){
		draw_text(30,550,"At least one \"thing\" in room!")
	} else{
		draw_text(30,550,"No \"thing\" in room!")
	}
}