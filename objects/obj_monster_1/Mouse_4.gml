//increase vampire leniency if draculas curse is unlocked
if (global.dracula && (1==1)){
	lenient+=0.1
}
//go through all the mugs and if they are on the tray, make the rating
with(obj_mug_full){
	if (on_tray){
		other.num_of_mugs+=1
		ratings(self, other)
	}
}
//increase tip if necronomicon is unlocked and 
//sprite index is zombie, mummy, or frankenstein
if ((global.necronomicon) && (sprite_index==spr_icon_zombie || sprite_index==spr_icon_frank)){
	tip=tip*1.1
}

global.tips+=tip
if (num_of_mugs!=0){
	rating=rating/num_of_mugs
}
//play review
//destroy self afterwords
