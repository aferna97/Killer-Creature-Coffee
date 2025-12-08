/// @description Insert description here
// You can write your code in this editor
var len = string_length(text[text_current])
var count = 0

if (char_current < len)
{
	char_current = len
}
else
{
	text_current += 1
	if (text_current > text_last)
     {
		room_restart()
     }
	else
     {
		text[text_current] = drinkOrder(text[text_current], text_width);
		char_current = 0
      }
}