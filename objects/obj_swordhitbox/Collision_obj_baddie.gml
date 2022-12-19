if obj_player.sprite_index = spr_player_uppercutfinishingblow && floor(image_index) == (image_number - 1)
{
	with instance_nearest(x, y, obj_baddie)
	{
	vsp -= 10		
	hsp = 0
	}
}