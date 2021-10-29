//Destroy the Block
if destroyed = true
{
	respawnblock--
    visible = false;
    x = -960;
    y = -100;
    mask_index = spr_null;
}
//Restore to Normal
if destroyed = true && respawnblock <= 0 
{
	mask_index = sprite_index;
	if !place_meeting(xstart, ystart, obj_player) && !place_meeting(xstart, ystart, obj_baddie)
	{
		instance_create((xstart + (sprite_width / 2)), (ystart + (sprite_height / 2)), obj_cloudeffect)
		repeat (3)
			instance_create(((xstart + (sprite_width / 2)) + random_range(-5, 5)), ((ystart + (sprite_height / 2)) + random_range(-5, 5)), obj_cloudeffect)		
		respawnblock = 100;
		destroyed = false
		initialhsp = random_range(-4, 4)
		initialvsp = random_range(-4, 0)		
		visible = true;
		x = xstart;
		y = ystart;
	}
}

