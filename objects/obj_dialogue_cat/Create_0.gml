/// @description Insert description here
// You can write your code in this editor
//move with player
persistent=true
var text_show = obj_cat_icon.hint
text[0]= text_show

text_current = 0
text_last = 1
text_width = 500
//starting coordinates of text
text_x = 200
text_y = 200

//speed for text
char_current = 1
char_speed = 0.25

text[text_current] = drinkOrder(text[text_current], text_width)

//player must watch the text for at least 2 seconds
alarm[0]=5*game_get_speed(gamespeed_fps)