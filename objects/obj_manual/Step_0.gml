if (obj_player.key_right2 && i < sprite_get_number(spr_manual) - 1)
{
    i += 1
    scr_soundeffect(29)
}
if ((-obj_player.key_left2) && i > 0)
{
    i -= 1
    scr_soundeffect(29)
}
if (obj_player.key_slap2 || keyboard_check_pressed(vk_f5) || obj_player.key_start)
{
    instance_destroy()
    obj_mainmenuselect.selected = 0
}


