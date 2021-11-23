if (global.panic == 1) || (global.snickchallenge == 1)
    sprite_index = spr_bgpillarjohnescape

if obj_player.x > (x + 43) && obj_player.x < (x + 116) && global.panic != 1 && sprite_index != spr_bgpillarjohndisgruntled
{
	sprite_index = spr_bgpillarjohndisgruntled
	shaketime = 8
	ds_list_add(global.saveroom, id)
}

if (shaketime > 0)
{
	shaketime--
	shakemag = irandom_range(-2.5, 2.5)
}
else
	shakemag = 0

