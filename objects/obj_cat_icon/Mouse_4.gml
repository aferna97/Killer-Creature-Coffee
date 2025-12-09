//show dialog
var givenHint = ""
givenHint = string(giveHint())
if (givenHint != ""){
	hint = givenHint
} else{
	hint = "No customer to help with."
}
instance_create_layer(room_width/2, room_height/2,"Info", obj_dialogue_cat, {hintText: hint})