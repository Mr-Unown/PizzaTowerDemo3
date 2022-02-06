function scr_player_forknight()
{
move = (key_right + key_left)
    if (sprite_index != spr_forknight_heatstart && sprite_index != spr_forknight_heat && sprite_index != spr_forknight_turn)
        hsp = (movespeed * move)
    if (sprite_index == spr_forknight_walk)
        movespeed = 1
	if move != 0 && sprite_index != spr_forknight_heat
	sprite_index = spr_forknight_walk
}