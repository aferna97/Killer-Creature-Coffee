draw_set_font(txt_title)
draw_set_halign(fa_center)
draw_set_colour(c_white)
//credits
draw_text_ext(room_width/2,spawn_y,"Killer Creature Co." ,-1, 900)
draw_set_font(txt_credits)
draw_text_ext(room_width/2,spawn_y+150,"Programmers\nAlexandra Rosas Nunez\nAngelica Fernandez Ortega\n\n"+ 
										"Sound Artists\nAlexandra Rosas Nunez\nRoman Loresto\n\n" + 
										"Asset Artists\nRoman Loresto\nShaarav Singh\n\n"+
										"Background Artists\nShaarav Singh\n\n" + 
										"Special thanks to Marinela" ,-1, 1400)
//cat photo
draw_sprite(spr_marinela,-1,room_width/2,spawn_y+1250)
//fun assets float by
draw_sprite_ext(spr_gingerdead,-1,150,spawn_y+150,1.5,1.5,10,c_white,1)
draw_sprite_ext(spr_upgrade_cat_talisman,-1,room_width-150,spawn_y+300,1.5,1.5,-10,c_white,1)
draw_sprite_ext(spr_ghost,-1,100,spawn_y+500,0.7,0.7,10,c_white,1)
draw_sprite_ext(spr_additive_4,-1,room_width-150,spawn_y+800,1.1,1.1,-10,c_white,1)



