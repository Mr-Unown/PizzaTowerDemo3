if (obj_player.key_right2 && i < sprite_get_number(spr_manual) - 1)
{
    i += 1
    scr_soundeffect(sfx_step)
}
if ((-obj_player.key_left2) && i > 0)
{
    i -= 1
    scr_soundeffect(sfx_step)
}
if (obj_player.key_slap2 || keyboard_check_pressed(vk_f5) || obj_player.key_start)
{
    instance_destroy()

    if (room == New_Realtitlescreen)
	{
        obj_player1.state = states.normal;
		if global.coop == true
			obj_player2.state = states.normal;
		obj_newmainmenuselect.selected = 0
	}
	else if room == Realtitlescreen
	{
		obj_mainmenuselect.selected = 0
	}
}


