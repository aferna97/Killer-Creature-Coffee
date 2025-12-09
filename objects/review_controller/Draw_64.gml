//play review with monster
draw_sprite(monster, -1,room_width/2,15)
draw_sprite_ext(bg_counter,-1,672,607,0.47733,0.43729,0,c_white,1)
draw_sprite_ext(spr_cat_dialog,-1,200,room_height/2+50,0.25,0.3,0,c_white,1)

//text of review
draw_set_font(Fnt_dialogue_cat)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_colour(c_black)

var len = string_length(text[text_current])
if (char_current < len)
{
	char_current += char_speed
}

var str = string_copy(text[text_current], 1, char_current)
draw_text(text_x, text_y,  str)