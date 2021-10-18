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
if respawnblock <= 0 && !place_meeting(xstart, ystart, obj_player) && !place_meeting(xstart, ystart, obj_baddie)
{
    respawnblock = 100;
	destroyed = false
    visible = true;
    x = xstart;
    y = ystart;
    mask_index = sprite_index;
}

