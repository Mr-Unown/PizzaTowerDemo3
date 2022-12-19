
if (place_meeting(x, (y + 1), obj_player) || place_meeting(x, (y - 1), obj_player) || place_meeting((x - 1), y, obj_player) || place_meeting((x + 1), y, obj_player))
{
    if ((place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player)) && (obj_player.state == 83 || obj_player.state == 17 || obj_player.state == 11 || obj_player.state == 2 || obj_player.state == 30 || (obj_player.state == 17 && obj_player.momemtum == 1)))
        instance_destroy()
    if (place_meeting(x, (y - 1), obj_player) && (obj_player.state == 17 || obj_player.state == 2 || (global.cane == 1 && obj_player.sprite_index = obj_player.spr_caneslam)))
    {
        instance_destroy()
        tile_layer_delete_at(1, x, y)
    }
    if (place_meeting(x, (y + 40), obj_player) && obj_player.state == 56)
        instance_destroy()
	if (place_meeting(x, (y - 1), obj_player) && obj_player.state == 70 && obj_player.metal > 10)
		instance_destroy()
	if place_meeting((x + obj_player.hsp), y, obj_player) && obj_player.sprite_index = spr_null
		instance_destroy()
	if place_meeting((x - obj_player.hsp), y, obj_player) && obj_player.sprite_index = spr_null
		instance_destroy()
}
