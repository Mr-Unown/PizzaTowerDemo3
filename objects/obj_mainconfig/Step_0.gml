scr_getinput()
if ((key_up2 || keyboard_check_pressed(vk_up)) && optionselected > 0 && selected == 0)
{
    optionselected -= 1
    scr_soundeffect(29)
}
if ((key_down2 || keyboard_check_pressed(vk_down)) && optionselected < 2 && selected == 0)
{
    optionselected += 1
    scr_soundeffect(29)
}
if ((key_slap2 || key_start) && selected == 0)
{
    scr_soundeffect(8)
    if (room == Realtitlescreen)
	{
        obj_mainmenuselect.selected = 0
		obj_file2.sprite_index = spr_file2
	}
    instance_destroy()
}
if (optionselected == 0 && selected == 0)
{
    if (!instance_exists(obj_videoconfig))
    {
        if key_jump
        {
            visible = false
            instance_create(x, y, obj_videoconfig)
        }
    }
}
if (optionselected == 1 && selected == 0)
{
    if (!instance_exists(obj_audioconfig))
    {
        if key_jump
        {
            visible = false
            instance_create(x, y, obj_audioconfig)
        }
    }
}
if (optionselected == 2 && selected == 0)
{
    if (!instance_exists(obj_keyconfig))
    {
        if key_jump
        {
            visible = false
            instance_create(x, y, obj_keyconfig)
        }
    }
}
if ((!instance_exists(obj_keyconfig)) && (!instance_exists(obj_audioconfig)) && (!instance_exists(obj_videoconfig)))
    selected = 0
else
    selected = 1


