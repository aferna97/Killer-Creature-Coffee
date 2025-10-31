//keeps bean on all rooms
persistent = true
//save ingredients added as a number
//check beans, and saved in ingredients ...x3x2x1 are beans, x3=bean_3, ...
if (prep_controller.bean){
	ingredients +=1 *power(10,0)
	prep_controller.bean = false
}if (prep_controller.bean_2){
	ingredients +=1 *power(10,1)
	prep_controller.bean_2 = false
}if (prep_controller.bean_3){
	ingredients +=1 *power(10,2)
	prep_controller.bean_3 = false
}
//check dry additives, and saved in ingredients ...x11x10x9x8x7x6x5x4..., x4 is dry_1, ...
if (prep_controller.dry_1){
	ingredients +=1 *power(10,3)
	prep_controller.dry_1 = false
}if (prep_controller.dry_2){
	ingredients +=1 *power(10,4)
	prep_controller.dry_2 = false
}if (prep_controller.dry_3){
	ingredients +=1 *power(10,5)
	prep_controller.dry_3 = false
}if (prep_controller.dry_4){
	ingredients +=1 *power(10,6)
	prep_controller.dry_4 = false
}if (prep_controller.dry_5){
	ingredients +=1 *power(10,7)
	prep_controller.dry_5 = false
}if (prep_controller.dry_6){
	ingredients +=1 *power(10,8)
	prep_controller.dry_6 = false
}if (prep_controller.dry_7){
	ingredients +=1 *power(10,9)
	prep_controller.dry_7 = false
}if (prep_controller.dry_8){
	ingredients +=1 *power(10,10)
	prep_controller.dry_8 = false
}
