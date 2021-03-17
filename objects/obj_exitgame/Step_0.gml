if (!instance_exists(obj_keyconfig))
{
    if (((-obj_player.key_left2) || keyboard_check_pressed(vk_left)) && optionselected > 0)
    {
        optionselected -= 1
        scr_soundeffect(29)
    }
    if ((obj_player.key_right2 || keyboard_check_pressed(vk_right)) && optionselected < 1)
    {
        optionselected += 1
        scr_soundeffect(29)
    }
}
if (optionselected == 1 && (obj_player.key_jump || keyboard_check_pressed(vk_return)))
{
	game_end()
}
if (obj_player.key_slap2 || keyboard_check_pressed(vk_escape) || (optionselected == 0 && (obj_player.key_jump || keyboard_check_pressed(vk_return))))
{
    scr_soundeffect(8)
    obj_mainmenuselect.selected = 0
	obj_file3.sprite_index = spr_file3
    instance_destroy()
}


