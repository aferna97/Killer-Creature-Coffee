/// @description Insert description here
// You can write your code in this editor
text[0]= "Hello new hire! Welcome to Killer Creature Coffee Co. \n\nYou will be serving different monst- *cough* customers I mean, throughout the nightshift, so don't fret. \n\nPress Space to skip or continue"
text[1]= "However make sure to not forget the orders and don't make the customers wait too long. \n\nThere are arrow keys at the bottom right corner to help you navigate the shop in the next room."
text[2]="There are also useful keys you can click. \n\n1 - Order room \n2 - Prep room \n3 - Brew room \n4 - Additive room \n5 - Computer room"
text[3]= "You will start by taking a few customers orders, followed by grinding their coffee and other ingredients in the Prep room. Then you'll brew their beans and filter it in the Brew room. Next adding their desired liquid additives in the Additive room and serving it to the customer. \n\n ALL INGREDIENTS ARE SAFE"
text[4]= "There might be an odd fellow who comes by... pay close attention. It likes to impersonate the regulars. \n\nYou can remember the customers' usuals or.... well if it gets too far... we do have a gun... but don't worry about that for now :)"
text[5]= "The Computer room is where you'll take your break, but don't slack off in there for too long. Upgrades can be bought to better your service"
text[6]="This is the last time I'll be nice, but if you ever forget an order, you can ask by clicking on the cat icon on the bottom left. \n\nGood luck!! hehe... \n\nPress Space to restart overview\n\nPress Enter to play"

text_current = 0
text_last = 6
text_width = 480
//starting coordinates of text
text_x = 90
text_y = 100

//speed for text
char_current = 1
char_speed = 0.50

text[text_current] = drinkOrder(text[text_current], text_width)