if !place_meeting(x, y + 32, obj_ladder) && !place_meeting(x, y + 32, obj_solid)
	sprite_index = spr_ladderend
else
	sprite_index = spr_ladder