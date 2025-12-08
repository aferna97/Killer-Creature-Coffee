/// @description Insert description here
// You can write your code in this editor
orderIndex = irandom_range(0,1)

if(orderIndex == 0)
{
	text[0]= ".One cursed coffee \n-Bone powder \n-Milk \n.One dark roast coffee \n-Maggots"

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
	text[0]= ".Two dark roast coffees \n.Candy \n.Milk \n.For both"

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