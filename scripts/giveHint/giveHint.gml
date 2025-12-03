function giveHint(){
	//go through the monsters to find a hint to give
	with(obj_monster_1){
		var hint=""
		switch(sprite_index){
			case spr_icon_zombie:
				hint = "The zombie may be slow, but get the orders out quick!\n"
				break
			case spr_icon_werewolf:
				hint = "Finish the werewolves order so that it gets out of here\n"
				break
			case spr_icon_vampire:
				hint = "Tick Tock, the vampire won't wait all day...\n"
				break
			case spr_icon_mummy:
				hint = "I swear, you always bother me! Just serve the mummy\n"
				break
			case spr_icon_invisible:
				hint = "Did you forget my buddy, invisible man? Get his order out! Now!\n"
				break
			case spr_ghost:
				hint = "Just serve the sheet ghost, his order is not that hard\n"
				break
			case spr_icon_frank:
				hint = "Frankenstein's order? Come on, it's not that hard to memorize\n"
				break
		}
		var i=irandom_range(1,3)
		switch(i){
			case 3:	//hint about wet additives
				var j=irandom_range(1,3)
				switch(j){
				case 3:		//hint on coffee 3 if it exists
					if (coffee_3!=0){
						hint+=hintWet(coffee_3,3)
						break
					}
				case 2:	//hint on coffee 2 if it exists
					if (coffee_2!=0){
						hint+=hintWet(coffee_2,2)
						break
					}
				case 1:	//hint on coffee 2 if it exists
					if (coffee_1!=0){
						hint+=hintWet(coffee_1,1)
					}
					break
				}
				if (string_pos("has some", hint)>0){	//if some hint was added by wet additive hint, break
					break
				}
			case 2:	//hint about dry additives
				var j=irandom_range(1,3)
				switch(j){
				case 3:		//hint on coffee 3 if it exists
					if (coffee_3!=0){
						hint+=hintDry(coffee_3,3)
						break
					}
				case 2:	//hint on coffee 2 if it exists
					if (coffee_2!=0){
						hint+=hintDry(coffee_2,2)
						break
					}
				case 1:	//hint on coffee 2 if it exists
					if (coffee_1!=0){
						hint+=hintDry(coffee_1,1)
					}
					break
				}
				if (string_pos("has ", hint)>0){	//if some hint was added by dry additive hint, break
					break
				}
			case 1: //hint about beans
				var j=irandom_range(1,3)
				switch(j){
				case 3:		//hint on coffee 3 if it exists
					if (coffee_3!=0){
						hint+=hintBeans(coffee_3,3)
						break
					}
				case 2:	//hint on coffee 2 if it exists
					if (coffee_2!=0){
						hint+=hintBeans(coffee_2,2)
						break
					}
				case 1:	//hint on coffee 2 if it exists
					if (coffee_1!=0){
						hint+=hintBeans(coffee_1,1)
					}
					break
				}
				break
		}
	//sign offs
	var k=irandom_range(0,2)
	switch(k){
		case 0: 
			hint+="Thats enough hints! Scram!"
			break
		case 1:
			hint+="Well? Get back to work!"
			break
		case 2:
			hint+="I do not pay you to stand around, move!"
			break
	}
	return hint
	}
	return ""
}
//give hint on specific coffee's bean
function hintBeans(coffee,num){
	var hint=""
	if (coffee%2==1){	//hint on bean 1
		hint+="Coffee "+ string(num) +" has beans from the leftmost bag...\n"
	}
	if ((floor(coffee/10))%2==1){	//hint on bean 2
		hint+="Coffee "+ string(num) +" has beans from the middle bag...\n"
	}
	if ((floor(coffee/100))%2==1){	//hint on bean 3
		hint+="Coffee "+ string(num)+" has beans from the rightmost bag...\n"
	}
	return hint
}
//give hint on specific coffee's dry additives
function hintDry(coffee,num){
	var hint=""
	if ((floor(coffee/1000))%2==1){	//hint on dry 1
		hint+="Coffee "+ string(num)+" has ectoplasm...\n"
	}
	if ((floor(coffee/10000))%2==1){	//hint on dry 2
		hint+="Coffee "+ string(num)+" has candy...\n"
	}
	//to help break up the text wall
	if (hint!=""){
		hint+="I pay you to make coffee! Stop quizzing me!\n"
	}
	if ((floor(coffee/100000))%2==1){	//hint on dry 3
		hint+="Coffee "+ string(num)+" has bones...\n"
	}
	if ((floor(coffee/1000000))%2==1){	//hint on dry 4
		hint+="Coffee "+ string(num)+" has brain...\n"
	}
	//to help break up the text wall
	if (hint!=""){
		hint+="Seriously... how could you forget so much!\n"
	}
	if ((floor(coffee/10000000))%2==1){	//hint on dry 5
		hint+="Coffee "+ string(num)+" has maggots...\n"
	}
	if ((floor(coffee/100000000))%2==1){	//hint on dry 6
		hint+="Coffee "+ string(num)+" has pink stuff...\n"
	}
	return hint
}
//givr hint on specific coffee's dry additives
function hintWet(coffee,num){
	var hint = ""
	if ((floor(coffee/(1*power(10,11))))%2==1){	//hint on wet 1
		hint+="Coffee "+ string(num)+" has some sweet blood...\n"
	}
	if ((floor(coffee/(1*power(10,12))))%2==1){	//hint on wet 2
		hint+="Coffee "+ string(num)+" has some poison...\n"
	}
	//to help break up the text wall
	if (hint!=""){
		hint+="Can't you remember anything?\n"
	}
	if ((floor(coffee/(1*power(10,13))))%2==1){	//hint on wet 3
		hint+="Coffee "+ string(num)+" has some milk...\n"
	}
	if ((floor(coffee/(1*power(10,14))))%2==1){	//hint on wet 4
		hint+="Coffee "+ string(num)+" has some formaldehyde...\n"
	}
	return hint
}