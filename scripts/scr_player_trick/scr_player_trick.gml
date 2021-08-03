hsp = xscale * movespeed

//Taunt
if key_taunt2 && !(sprite_index = spr_supertaunt1 || sprite_index = spr_supertaunt2 || sprite_index = spr_supertaunt3 || sprite_index = spr_supertaunt4)
{
	if vsp >= 0
		vsp = -5
	tricksperformed += 1;
	global.style += 3
	with (instance_create((x), y + 5, obj_smallnumber))
	{
		number = "3"
		color = 5
	}
    scr_soundeffect(sfx_taunt)
	image_index = 0
	sprite_index = choose(spr_supertaunt1,spr_supertaunt2,spr_supertaunt3,spr_supertaunt4)
    with (instance_create(x, y, obj_taunteffect))
    {
        playerid = other.id
        baddie = 0
    }
	instance_create(x, y, obj_tauntaftereffectspawner)
}
//Wallrun
if (((!grounded) && scr_solid(x + hsp,y) && (!place_meeting((x + hsp), y, obj_destructibles)) && (!place_meeting((x + sign(hsp)), y, obj_slope))) || (grounded && (scr_solid(x + sign(hsp),y - 2) && !place_meeting(x + sign(hsp),y,obj_slope)) && (!place_meeting((x + hsp), y, obj_destructibles))  && scr_slope() ) )
{
    wallspeed = clamp(movespeed,0,24)
    state = 17
}
//Land
if (grounded && vsp > 0 && movespeed >= 12)
{
	state = 91
    sprite_index = spr_mach4
	movespeed = clamp(wallspeed,12,24)
}
else if (grounded && vsp > 0)
{
    state = 70
	movespeed = clamp(wallspeed,8,12)
}

//Animations
if floor(image_index) >= (image_number - 1) && (sprite_index = spr_supertaunt1 || sprite_index = spr_supertaunt2 || sprite_index = spr_supertaunt3 || sprite_index = spr_supertaunt4)
	sprite_index = spr_mach2jump
if (floor(image_index) >= (image_number - 1) && sprite_index == spr_playerV_spinjump1)
    sprite_index = spr_mach2jump

if (sprite_index = spr_supertaunt1 || sprite_index = spr_supertaunt2 || sprite_index = spr_supertaunt3 || sprite_index = spr_supertaunt4)
	image_speed = 0.35
else
	image_speed = 0.5