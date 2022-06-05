with (playerid)
{
	if character != "PZ"
	scr_soundeffect(choose(sfx_parry1,sfx_parry2))
	else
	scr_soundeffect(sfx_PZparry)
    state = 114
    sprite_index = choose(spr_parry1, spr_parry2, spr_parry3)
    image_index = 0
    taunttimer = 20
    parry_id = -4
    image_speed = 0.35
    parried_baddie = 8
    flash = 1
    movespeed = 8
	//scr_sleep();	
}
alarm[0] = 3
collided = 1


