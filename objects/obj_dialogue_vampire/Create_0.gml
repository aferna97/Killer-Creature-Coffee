/// @description Insert description here
// You can write your code in this editor
orderIndex = irandom_range(0,2)

if(orderIndex == 0)
{
	text[0]= ".One blood bean coffee \n.Blood sweetner"

	text_current = 0
	text_last = 1
	text_width = 280
	//starting coordinates of text
	text_x = 1080
	text_y = 200

	//speed for text
	char_current = 1
	char_speed = 0.25

	text[text_current] = drinkOrder(text[text_current], text_width)
}
if(orderIndex == 1)
{
	text[0]= ".One blood bean coffee \n.Double Blood sweetner"

	text_current = 0
	text_last = 1
	text_width = 280
	//starting coordinates of text
	text_x = 1080
	text_y = 200

	//speed for text
	char_current = 1
	char_speed = 0.25

	text[text_current] = drinkOrder(text[text_current], text_width)
}
if(orderIndex == 2)
{
	text[0]= ".One blood bean coffee \n-Blood sweetner \n.One blood bean coffee \n-Bone powder \n-Blood sweetner"

	text_current = 0
	text_last = 1
	text_width = 280
	//starting coordinates of text
	text_x = 1080
	text_y = 200

	//speed for text
	char_current = 1
	char_speed = 0.25

	text[text_current] = drinkOrder(text[text_current], text_width)
}