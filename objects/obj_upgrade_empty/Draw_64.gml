if (draw){
	draw_set_font(txt_default)
	draw_set_halign(fa_left)
	draw_text_ext(x+80,y-50,"Price: " + string(price)+ "\nDescription: " + description,-1, 600)
}