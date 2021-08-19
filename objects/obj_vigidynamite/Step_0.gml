hsp = (image_xscale * movespeed)
mask_index = spr_player_mask
if (scr_solid(x, (y + 1)) && vsp > 0)
{
    vsp = -5
    if (movespeed > 0)
        movespeed -= 1
}
if (playerid.key_shoot2 && playerid.state != 110)
{
    instance_destroy()
    with instance_create(x, y, obj_dynamiteexplosion) {
		playerid = other.playerid
	}
}
if ((place_meeting((x + hsp), y, obj_solid) || place_meeting((x + hsp), (y + vsp), obj_destructibles) || place_meeting(x, y, obj_baddie)) && (!place_meeting(x, (y - 16), obj_solid)) && (!place_meeting(x, (y + 16), obj_solid)))
    image_xscale *= -1
if (place_meeting((x + hsp), (y + vsp), obj_destructibles) || place_meeting((x + hsp), (y + vsp), obj_bombblock) || place_meeting(x, y, obj_baddie))
{
    instance_destroy()
    with instance_create(x, y, obj_dynamiteexplosion) {
		playerid = other.playerid
	}
}

if ((place_meeting((x + hsp), (y + vsp), obj_metalblock) && (!place_meeting((x + hsp), (y + vsp), obj_metalblockhard))) || place_meeting((x + hsp), (y + vsp), obj_metalblockescape))
{
    instance_destroy()
    with instance_create(x, y, obj_dynamiteexplosion) 
	{
		playerid = other.playerid
	}
}
if (place_meeting((x + hsp), (y + vsp), obj_tntblock) || place_meeting((x + hsp), (y + vsp), obj_rockblock))
{
    instance_destroy()
    with instance_create(x, y, obj_dynamiteexplosion) {
			playerid = other.playerid
	}
}
if place_meeting(x, y, obj_grandpa)
{
    instance_destroy()
    with instance_create(x, y, obj_dynamiteexplosion) {
			playerid = other.playerid
	}
}
if (countdown <= 0)
{
    instance_destroy()
    instance_create(x, y, obj_dynamiteexplosion) {
			playerid = other.playerid
	}
}
if (sprite_index == spr_dynamite && countdown < 60)
    sprite_index = spr_dynamiteabouttoexplode
if (sprite_index == spr_dynamite || sprite_index == spr_dynamiteabouttoexplode)
    countdown--
scr_collide()


