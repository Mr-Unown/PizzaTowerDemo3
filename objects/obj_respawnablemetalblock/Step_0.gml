#region Destroy
var player = (global.coop == true ? instance_nearest(x, y, obj_player) : obj_player1)
with (player)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == states.mach3 || state == states.jetpack || state == states.knightpepslopes || state == states.newbomb))
        with other { event_user(0) } //One Line Pog
	if (state = states.knightpepattack || state == states.newbomb)
	{
		if place_meeting(x + hsp, y + vsp, other.id)
        {
			with other { event_user(0) } //One Line Pog
        }		
	}
}
if (place_meeting(x, (y + 1), player) || place_meeting(x, (y - 1), player) || place_meeting((x - 1), y, player) || place_meeting((x + 1), y, player))
{
    if (place_meeting(x, (y - 1), player) && player.state == states.freefall && player.freefallsmash >= 10)
        event_user(0)
    if (place_meeting(x, (y - 1), player) && (player.state == states.knightpep || player.state == 9))
    {
        event_user(0)
    }
}
if place_meeting(x, (y + 40), player) && (player.state == states.Sjump && (player.superspringjump == 1 || player.character = "PZ")) && object_index != obj_metalblockhard
    event_user(0)
#endregion


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
if destroyed = true && respawnblock <= 0 && !place_meeting(xstart, ystart, obj_player) && !place_meeting(xstart, ystart, obj_baddie)
{
	instance_create((xstart + (sprite_width / 2)), (ystart + (sprite_height / 2)), obj_cloudeffect)
	repeat (3)
		instance_create(((xstart + (sprite_width / 2)) + random_range(-5, 5)), ((ystart + (sprite_height / 2)) + random_range(-5, 5)), obj_cloudeffect)		
    respawnblock = 100;
	destroyed = false
    visible = true;
    x = xstart;
    y = ystart;
    mask_index = sprite_index;
}

