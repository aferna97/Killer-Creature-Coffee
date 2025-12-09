/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_cat_dialog,0,room_width/2,room_height/2)
draw_sprite_ext(spr_cat_face,-1,200,room_height-room_height/4,0.2,0.2,0,c_white,1)
	
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