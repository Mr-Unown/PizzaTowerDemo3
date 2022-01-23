with (playerid)
{
	if character != "PZ"
	scr_soundeffect(sfx_parry)
	else
	scr_soundeffect(sfx_PZparry)
    state = 114
    sprite_index = choose(spr_parry1, spr_parry2, spr_parry3)
    image_index = 0
    taunttimer = 20
    parry_id = -4
    image_speed = 0.5
    parried_baddie = 8
    flash = 1
    movespeed = 8
    tauntstoredstate = states.normal
    tauntstoredmovespeed = 0
    tauntstoredsprite = spr_idle
	//scr_sleep();	
}
alarm[0] = 3
collided = 1


