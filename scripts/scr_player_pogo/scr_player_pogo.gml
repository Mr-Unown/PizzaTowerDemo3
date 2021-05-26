//Move
move = (key_left + key_right)
//Store to HSP
if move != 0 && grounded
hsp = (move * movespeed)
else
hsp = (xscale * movespeed)


//Grounded
if grounded && !(sprite_index = spr_playerN_pogo || sprite_index = spr_playerN_pogocharged)
{
	hsp = 0
	vsp = 0
	movespeed = 0
	image_index = 0
	//Landeffects
	with instance_create(x, y, obj_landcloud) {
		playerid = other.id
		image_xscale = other.xscale
	}	
	if pogobounces > 2 
		with instance_create(x, y, obj_pogoeffect) {
			playerid = other.id
			image_xscale = other.xscale
		}
	scr_soundeffect(sfx_pogo)
	
	//Change sprite depending on charge
	if pogojetcharge = false
		sprite_index = spr_playerN_pogo
	else
		sprite_index = spr_playerN_pogocharged	
	image_index = 0
	//So it only adds once per bounce
	pogoed = false	
}
if (sprite_index = spr_playerN_pogo || sprite_index = spr_playerN_pogocharged) && floor(image_index) = 3 && pogoed = false
{
	//Speedup
	if move = xscale
	{
		pogomovespeed = clamp((pogomovespeed + 4), 6 , 128)
		pogobounces += 1
		movespeed = pogomovespeed
	}
	else if move != xscale && movespeed > 0 
	{
		pogomovespeed = 6
		pogobounces = 0
		movespeed = pogomovespeed	
	}
	//Jump
	if key_jump2
	vsp = -12
	else if key_down2
	vsp = -3		
	else
	vsp = -6

	//To prevent repeat stuff
	pogoed = true	
	
}


//Animations
if sprite_index = spr_playerN_pogo && pogojetcharge = true
	sprite_index = spr_playerN_pogocharged	
if sprite_index = spr_playerN_pogocharged && pogojetcharge = false
	sprite_index = spr_playerN_pogo	


if floor(image_index) = (image_number - 1) && (sprite_index = spr_playerN_pogo || sprite_index = spr_playerN_pogofallcharged || sprite_index = spr_playerN_pogostart || sprite_index = spr_playerN_pogocharged)
{
	if pogojetcharge = false
		sprite_index = spr_playerN_pogofall
	else
		sprite_index = spr_playerN_pogofallcharged	
}

//Movespeed
if move != 0 && !grounded
{
	if movespeed < 6
		movespeed += 0.25
}
//Back to Zero
if move != xscale || move = 0 {
	movespeed = 0
	pogobounces = 0
}
if move != xscale 
	pogomovespeed = 6
	
//Wall
if place_meeting(x + sign(hsp), y, obj_solid) && (movespeed > 0 && !place_meeting(x + sign(hsp), y, obj_destructibles)) {
	movespeed = 0
	pogobounces = 0
	pogomovespeed = 6
}
//Face Direction
if move != 0 && hsp = 0
	xscale = move
else if sign(hsp) != 0
	xscale = sign(hsp)

//Cancel to Normal
if !key_attack {
state = 0 
pogobounces = 0
}

//Machcharge
if pogomovespeed > 12
{
	if pogobounces < 2
	pogobounces = 2
}
if (pogobounces >= 2) && pogojetcharge = false
{
	pogojetcharge = true
	pogojetchargebuffer = 100
}
if movespeed > 12 
	pogojetchargebuffer = 100

//Taunt
if key_taunt2 && (sprite_index != spr_playerN_pogo && sprite_index != spr_playerN_pogocharged)
{
    scr_soundeffect(sfx_taunt)
    taunttimer = 20
    tauntstoredmovespeed = movespeed
    tauntstoredsprite = sprite_index
    tauntstoredstate = state
    state = 51
    image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
    sprite_index = spr_taunt
    with (instance_create(x, y, obj_taunteffect))
    {
        playerid = other.id
        baddie = 0
    }
	scr_baddietauntfakeout();		
}


image_speed = 0.35	
	
