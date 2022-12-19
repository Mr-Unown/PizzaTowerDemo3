function scr_player_pal() {
	move = (key_left2 + key_right2)

	if move == 1 
	{
	  if paletteselect < 12
	  {
		instance_create_depth(obj_palexample.x, obj_palexample.y, -6, obj_poofeffect)
	    paletteselect++
	  }
	}
	else if move == -1
	{
	  if paletteselect > 1
	  {
		instance_create_depth(obj_palexample.x, obj_palexample.y, -6, obj_poofeffect)
	    paletteselect--
	  }
	}
		
	if key_jump2
	{
		state = 0
		obj_palletteswapper.drawing = 0
		targetRoom = hub_public
		targetDoor = "C"
		instance_create(x, y, obj_fadeout)
	}
	
	sprite_index = spr_idle


}
