if (vsp > 1 && (grounded || (grounded && (!place_meeting(x, y, obj_platform)))))
{
	with instance_create(x, y, obj_landcloud)
	{
		playerid = other.id
		image_xscale = other.image_xscale
	}	
    if (sprite_index != spr_coolpinea_parry)
        image_index = 0
}
if (vsp >= 0 && sprite_index == scaredspr && scarebuffer = 0)
    state = 102
if (object_index == obj_ancho && sprite_index == scaredspr && scarebuffer = 0)
    state = 102
if (object_index == obj_forknight && sprite_index == spr_forknight_turn && floor(image_index) == (image_number - 1))
    state = 102
if (object_index == obj_noisey && sprite_index == spr_noisey_turn && floor(image_index) == (image_number - 1))
    state = 102
if (sprite_index != spr_coolpinea_parry)
{
    if ((grounded || (grounded && (!place_meeting(x, y, obj_platform)))) && vsp > 0)
        hsp = 0
    if ((!(grounded || (grounded && (!place_meeting(x, y, obj_platform))))) && hsp < 0)
        hsp += 0.1
    else if ((!(grounded || (grounded && (!place_meeting(x, y, obj_platform))))) && hsp > 0)
        hsp -= 0.1
}
image_speed = 0.35
if (object_index == obj_indiancheese && sprite_index != spr_indiancheese_scared)
{
    if (pogger > 0)
        pogger--
}
if (object_index == obj_coolpinea && sprite_index != scaredspr)
{
   if (taunttimer > 0) && sprite_index = spr_coolpinea_taunt
        taunttimer--
    if ((!(scr_solid((x + ((-image_xscale) * 15)), (y + 31)) || place_meeting((x + ((-image_xscale) * 15)), (y + 31), obj_platform))) && sprite_index == spr_coolpinea_parry)
    {
        if grounded
            hsp = 0
    }
}
