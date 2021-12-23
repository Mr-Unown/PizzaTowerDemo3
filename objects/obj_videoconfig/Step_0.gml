scr_getinput()
if ((key_up2 || keyboard_check_pressed(vk_up)) && optionselected > -1)
{
    optionselected -= 1
    scr_soundeffect(sfx_step)
}
if ((key_down2 || keyboard_check_pressed(vk_down)) && optionselected < 3)
{
    optionselected += 1
    scr_soundeffect(sfx_step)
}
if (optionselected == -1)
{
    if (key_jump2 || keyboard_check_pressed(vk_return))
    {
        scr_soundeffect(sfx_enemyprojectile)
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
        ini_write_real("Option", "fullscreen", 0)
        ini_close()
        selecting = -1
		global.option_fullscreen = 0
    }
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_fullscreen == 1)
    {
        window_set_fullscreen(false)
        ini_open("saveData.ini")
        ini_write_real("Option", "fullscreen", 1)
        ini_close()
        selecting = -1
		global.option_fullscreen = 1
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
        ini_write_real("Option", "resolution", 0)
        ini_close()
        selecting = -1
		global.option_resolution = 0
    }
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_resolution == 1)
    {
        window_set_size(960, 540)
        ini_open("saveData.ini")
        ini_write_real("Option", "resolution", 1)
        ini_close()
        selecting = -1
		global.option_resolution = 1
    }
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_resolution == 2)
    {
        window_set_size(1920, 1080)
        ini_open("saveData.ini")
        ini_write_real("Option", "resolution", 2)
        ini_close()
        selecting = -1
		global.option_resolution = 2
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
			ini_write_real("Option", "panicbg", 0)
        ini_close()
        selecting = -1
    }
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_panicbg == 1)
    {
        global.screenmelt = 1
        ini_open("saveData.ini")
			ini_write_real("Option", "panicbg", 1)
        ini_close()
        selecting = -1
    }
}
if (optionselected == 3)
{
    if ((key_right2 || keyboard_check_pressed(vk_right)) && optionsaved_hitstun < 2)
        optionsaved_hitstun += 1
    if (((-key_left2) || keyboard_check_pressed(vk_left)) && optionsaved_hitstun > 0)
        optionsaved_hitstun -= 1		
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_hitstun == 0)
    {
        global.hitstunenabled = 0
        ini_open("saveData.ini")
			ini_write_real("Option", "hitstun", 0)
        ini_close()
        selecting = -1
    }
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_hitstun == 1)
    {
        global.hitstunenabled = 1
        ini_open("saveData.ini")
			ini_write_real("Option", "hitstun", 1)
        ini_close()
        selecting = -1
    }	
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_hitstun == 2)
    {
        global.hitstunenabled = 2
        ini_open("saveData.ini")
			ini_write_real("Option", "hitstun", 2)
        ini_close()
        selecting = -1
    }
}
/*
if (optionselected == 4)
{
    if ((key_right2 || keyboard_check_pressed(vk_right)) && optionsaved_interpolation < 1)
        optionsaved_interpolation += 1
    if (((-key_left2) || keyboard_check_pressed(vk_left)) && optionsaved_interpolation > 0)
        optionsaved_interpolation -= 1		
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_interpolation == 0)
    {
		global.interpolation = false
        ini_open("saveData.ini")
			ini_write_real("Option", "interpolation", false);
        ini_close()
		gpu_set_tex_filter(false);
        selecting = -1
    }
    if ((key_jump || keyboard_check_pressed(vk_return)) && optionsaved_interpolation == 1)
    {
		global.interpolation = true
        ini_open("saveData.ini")
			ini_write_real("Option", "interpolation", true);
        ini_close()
		gpu_set_tex_filter(true);
        selecting = -1
    }	

}*/
//global.hitstunenabled = true