persistent=true
//switch sprite and measure happiness
switch(monster){
	case spr_icon_zombie:
		if (rating<2){
			monster = spr_zombie_angry
			happiness=-1
		} else if (ratin<3){
			monster=spr_zombie
			happiness=0
		} else{
			monster=spr_zombie_happy
			happiness=1
		}
		break
	case spr_icon_invisible:
		if (rating<2){
			monster = spr_invisible_angry
			happiness=-1
		} else if (ratin<3){
			monster=spr_invisible
			happiness=0
		} else{
			monster=spr_invisible_happy
			happiness=1
		}
		break
	case spr_icon_ghost:
		if (rating<1){
			monster = spr_ghost_angry
			happiness=-1
		} else if (ratin<2){
			monster=spr_ghost
			happiness=0
		} else{
			monster=spr_ghost_happy
			happiness=1
		}
		break
	case spr_icon_frank:
		if (rating<2){
			monster = spr_frank_angry
			happiness=-1
		} else if (rating<3.5){
			monster=spr_frank
			happiness=0
		} else{
			monster=spr_frank_happy
			happiness=1
		}
		break
	case spr_icon_werewolf:
		if (rating<2.3){
			monster = spr_werewolf_angry
			happiness=-1
		} else if (rating<3.8){
			monster=spr_werewolf
			happiness=0
		} else{
			monster=spr_werewolf_happy
			happiness=1
		}
		break
	case spr_icon_vampire:
		if (rating<3){
			monster = spr_frank_angry
			happiness=-1
		} else if (rating<4){
			monster=spr_frank
			happiness=0
		} else{
			monster=spr_frank_happy
			happiness=1
		}
		break
	
}
//choose a random text based on happiness
var text_holder=""
if (happiness==-1){
	//decrease health by 1 heart
	health-=10
	if (!thing){
		var i = irandom_range(1,4)
		switch (i){
			case 1:
				text_holder= "ARGHHH This is terrible!"
				break
			case 2:
				text_holder= "How do you serve something so bad!?!?!"
				break
			case 3:
				text_holder= "This is NOT edible"
				break
			case 4:
				text_holder= "What is this???"
				break
		}
	} else{
		monster = spr_thing
		text_holder = "haha! I tricked you!"
	}
}else if (happiness==0){
	var i = irandom_range(1,3)
	switch (i){
		case 1:
			text_holder= "This is ok... I guess"
			break
		case 2:
			text[0]= "It could be way better."
			break
		case 3:
			text_holder= "This is not bad, but it's far from great."
			break
	}
} else if (happiness==1){
	var i = irandom_range(1,4)
	switch (i){
		case 1:
			text_holder= "This is really good!!"
			break
		case 2:
			text_holder= "Amazing! I have never had something quite like this"
			break
		case 3:
			text_holder= "Could I get another exactly like this?"
			break
		case 4:
			text_holder= "So Delicious!"
			break
	}
}
//add rating to text then show it
if (!thing){
text_holder+="\nI'd give you a rating of " + string(rating) + ", so here is a tip of $" + string(tip) + "."
}
text[0]=text_holder

text_current = 0
text_last = 1
text_width = room_width/2-400
//starting coordinates of text
text_x = 100
text_y = room_height/2

//speed for text
char_current = 1
char_speed = 0.25

text[text_current] = drinkOrder(text[text_current], text_width)
}
//set alarm for 30 seconds, so player can read then leave
alarm[0]=30*game_get_speed(gamespeed_fps)