scr_getinput()
if ((key_up2 || keyboard_check_pressed(vk_up)) && optionselected > -1)
{
    optionselected -= 1
    scr_soundeffect(29)
}
if ((key_down2 || keyboard_check_pressed(vk_down)) && optionselected < 2)
{
    optionselected += 1
    scr_soundeffect(29)
}
if (optionselected == -1)
{
    if (key_jump2 || keyboard_check_pressed(vk_return))
    {
        scr_soundeffect(8)
        if instance_exists(obj_mainconfig)
            obj_mainconfig.visible = true
        instance_destroy()
    }
}
if (optionselected == 0)
{
    if ((key_right2 || keyboard_check_pressed(vk_right)) && optionsaved_fullscreen == 0)
        optionsaved_fullscreen = 1
    if (((-key_left2) || keyboard_check_pressed(vk_left)) && optionsaved_fullscreen == 1)
        optionsaved_fullscreen = 0
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_fullscreen == 0)
    {
        window_set_fullscreen(true)
        ini_open("saveData.ini")
        global.option_fullscreen = ini_write_real("Option", "fullscreen", 0)
        ini_close()
        selecting = -1
    }
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_fullscreen == 1)
    {
        window_set_fullscreen(false)
        ini_open("saveData.ini")
        global.option_fullscreen = ini_write_real("Option", "fullscreen", 1)
        ini_close()
        selecting = -1
    }
}
if (optionselected == 1)
{
    if ((key_right2 || keyboard_check_pressed(vk_right)) && optionsaved_resolution < 2)
        optionsaved_resolution += 1
    if (((-key_left2) || keyboard_check_pressed(vk_left)) && optionsaved_resolution > 0)
        optionsaved_resolution -= 1
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_resolution == 0)
    {
        window_set_size(480, 270)
        ini_open("saveData.ini")
        global.option_resolution = ini_write_real("Option", "resolution", 0)
        ini_close()
        selecting = -1
    }
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_resolution == 1)
    {
        window_set_size(960, 540)
        ini_open("saveData.ini")
        global.option_resolution = ini_write_real("Option", "resolution", 1)
        ini_close()
        selecting = -1
    }
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_resolution == 2)
    {
        window_set_size(1980, 1080)
        ini_open("saveData.ini")
        global.option_resolution = ini_write_real("Option", "resolution", 2)
        ini_close()
        selecting = -1
    }
}
if (optionselected == 2)
{
    if ((key_right2 || keyboard_check_pressed(vk_right)) && optionsaved_panicbg == 1)
        optionsaved_panicbg = 0
    if (((-key_left2) || keyboard_check_pressed(vk_left)) && optionsaved_panicbg == 0)
        optionsaved_panicbg = 1
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_panicbg == 0)
    {
        global.screenmelt = 0
        ini_open("saveData.ini")
        global.screenmelt = ini_write_real("Option", "panicbg", 0)
        ini_close()
        selecting = -1
    }
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_panicbg == 1)
    {
        global.screenmelt = 1
        ini_open("saveData.ini")
        global.screenmelt = ini_write_real("Option", "panicbg", 1)
        ini_close()
        selecting = -1
    }
}


