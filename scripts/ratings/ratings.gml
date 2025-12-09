function ratings(mug, monster){
	if(sprite_index=spr_mug_burn){
		//tip for burnt coffee
		monster.tip+=(power(monster.lenient,2))/5
		//rating of burnt coffee, zombie super easy
		monster.rating+=0.5*power(monster.lenient,2)
		instance_destroy(mug)
	} else{
		if (monster.coffee_1!=0 && mug.mug_ingre==monster.coffee_1){
			perfect_ingredients(mug, monster, 1)
		} else if (monster.coffee_2!=0 && mug.mug_ingre==monster.coffee_2){
			perfect_ingredients(mug, monster, 2)
		} else if (monster.coffee_3!=0 && mug.mug_ingre==monster.coffee_3){
			perfect_ingredients(mug, monster, 3)
		} else{	//imperfect coffee ingredients
			var diff_1=abs(mug.mug_ingre-monster.coffee_1)
			var diff_2=abs(mug.mug_ingre-monster.coffee_2)
			var diff_3=abs(mug.mug_ingre-monster.coffee_3)
			switch(min(diff_1,diff_2,diff_3)){
				case diff_1:
					imperfect_ingredients(mug,monster,diff_1)
					monster.coffee_1=0
					break
				case diff_2:
					imperfect_ingredients(mug,monster,diff_2)
					monster.coffee_2=0
					break
				case diff_3:
					imperfect_ingredients(mug,monster,diff_3)
					monster.coffee_3=0
					break
			}
		}
		instance_destroy(mug)
	}
	
}
function perfect_ingredients(mug, monster,coffee){
	if (mug.filtered){
			//rating increases by 0.5 for filtered
			monster.rating+=0.5
			//tip increases by 0.25 for filter
			monster.tip+=0.25
		} 
		switch (mug.mug_prep_amount){
			case 1: //too little beans
			monster.rating+=0.1
			monster.tip+=0.05
			break
			case 2: //perfect beans
			monster.rating+=0.5
			monster.tip+=0.25
			break
			case 3: //too much beans
			monster.rating+=0.1
			monster.tip+=0.05
			break
		}
		//perfect coffee ingredients
		monster.tip+=3-(1/2)*power(monster.lenient,2)
		//rating of perfect coffee, without filter
		monster.rating+=4
		//reset coffee orders
		switch(coffee){
			case 1: 
				monster.coffee_1=0 
				break
			case 2: 
				monster.coffee_1=0 
				break
			case 3: 
				monster.coffee_1=0 
				break
		}
}
function imperfect_ingredients(mug,monster,diff){
	if (diff>1000000000){	//significantly wrong
		monster.rating+=1.2*monster.lenient
		monster.tip+=0.2*power(monster.lenient,2)+0.1
	} else if (diff>1000000){	//less wrong
		var i=random_range(1.1,1.6)
		monster.rating+=i*monster.lenient
		i=random_range(0.7,0.95)
		monster.tip+=(-1/2)*(power(monster.lenient,2))+monster.lenient+i
	} else{		//even less wrong
		var i=random_range(1.6,2.1)
		monster.rating+=i*monster.lenient
		i=random_range(0.95,1.2)
		monster.tip+=(-1/2)*(power(monster.lenient,2))+monster.lenient+i
	}
	if (mug.filtered){
		//rating increases by 0.5 for filtered
		monster.rating+=0.5
		//tip increases by 0.25 for filter
		monster.tip+=0.25
	} 
	switch (mug.mug_prep_amount){
		case 1: //too little beans
		monster.rating+=0.1
		monster.tip+=0.05
		break
		case 2: //perfect beans
		monster.rating+=0.5
		monster.tip+=0.25
		break
		case 3: //too much beans
		monster.rating+=0.1
		monster.tip+=0.05
		break
	}
}
