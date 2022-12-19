if place_meeting(x + 1, y, obj_player) && obj_player.sprite_index = spr_cotton_attack
{
	instance_destroy()	
}
if place_meeting(x - 1, y, obj_player) && obj_player.sprite_index = spr_cotton_attack
{
	instance_destroy()	
}

if place_meeting(x, y - 1, obj_player) and obj_player.sprite_index = spr_cotton_drill
	instance_destroy()