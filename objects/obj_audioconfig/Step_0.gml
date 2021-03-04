scr_getinput()
var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
var button_x = (draw_x + (sprite_width * value))
var button_y = draw_y
var button_radius = (sprite_get_width(spr_volumeknob) / 2)
var _mouse_x = (mouse_x - _cam_x)
var _mouse_y = (mouse_y - _cam_y)
if (optionselected == -1)
    transfervalue = 0
if (optionselected == 0)
{
    draw_y = 85
    if (change == 0)
    {
        ini_open("saveData.ini")
        transfervalue = ini_read_real("Option", "mastervolume", 1)
        ini_close()
    }
    if (value != transfervalue && change == 0)
    {
        value = transfervalue
        change = 1
    }
}
if (optionselected == 1)
{
    draw_y = 235
    if (change == 0)
    {
        ini_open("saveData.ini")
        transfervalue = ini_read_real("Option", "musicvolume", 1)
        ini_close()
    }
    if (value != transfervalue && change == 0)
    {
        value = transfervalue
        change = 1
    }
}
if (optionselected == 2)
{
    draw_y = 385
    if (change == 0)
    {
        ini_open("saveData.ini")
        transfervalue = ini_read_real("Option", "soundeffectsvolume", 1)
        ini_close()
    }
    if (value != transfervalue && change == 0)
    {
        value = transfervalue
        change = 1
    }
}
if ((key_up2 || keyboard_check_pressed(vk_up)) && optionselected > -1)
{
    optionselected -= 1
    scr_soundeffect(29)
    change = 0
}
if ((key_down2 || keyboard_check_pressed(vk_down)) && optionselected < 2)
{
    optionselected += 1
    scr_soundeffect(29)
    change = 0
}
if (optionselected == -1)
{
    if (key_jump2 || keyboard_check_pressed(vk_return))
    {
        scr_soundeffect(8)
        if instance_exists(obj_mainconfig)
            obj_mainconfig.visible = true
        instance_destroy()
        ini_open("saveData.ini")
        global.mastervolume = ini_read_real("Option", "mastervolume", 1)
        global.musicvolume = ini_read_real("Option", "musicvolume", 1)
        global.soundeffectsvolume = ini_read_real("Option", "soundeffectsvolume", 1)
        ini_close()
        audio_master_gain(global.mastervolume)
        audio_sound_gain(global.pausenicemusic, (0.6 * global.musicvolume), 0)
        audio_sound_gain(global.music, (0.6 * global.musicvolume), 0)
    }
}
if (optionselected == 0)
{
    if (key_right || keyboard_check(vk_right))
    {
        if (value < max_value && (key_attack || keyboard_check(vk_shift)))
            value += 0.0025
        else if (value < max_value)
            value += 0.001
        else
            value = max_value
        selected = 1
        key = 1
    }
    else if ((-key_left) || keyboard_check(vk_left))
    {
        if (value > 0 && (key_attack || keyboard_check(vk_shift)))
            value -= 0.0025
        else if (value > 0)
            value -= 0.001
        else
            value = 0
        selected = 1
        key = 1
    }
    else if mouse_check_button_pressed(mb_left)
    {
        if point_in_circle(_mouse_x, _mouse_y, button_x, button_y, button_radius)
        {
            key = 0
            selected = 1
        }
    }
    else if ((!mouse_check_button(mb_left)) && key == 0 && (!(key_right || keyboard_check(vk_right) || (-key_left) || keyboard_check(vk_left))))
    {
        selected = 0
        key = 0
    }
    if (selected == 1)
    {
        if (key == 0)
            value = clamp(((_mouse_x - draw_x) / sprite_width), 0, max_value)
        audio_master_gain(value)
    }
    if (key_jump || keyboard_check_pressed(vk_return))
    {
        ini_open("saveData.ini")
        global.mastervolume = ini_write_real("Option", "mastervolume", value)
        ini_close()
        audio_master_gain(value)
    }
}
if (optionselected == 1)
{
    if (key_right || keyboard_check(vk_right))
    {
        if (value < max_value && (key_attack || keyboard_check(vk_shift)))
            value += 0.0025
        else if (value < max_value)
            value += 0.001
        else
            value = max_value
        selected = 1
        key = 1
    }
    else if ((-key_left) || keyboard_check(vk_left))
    {
        if (value > 0 && (key_attack || keyboard_check(vk_shift)))
            value -= 0.0025
        else if (value > 0)
            value -= 0.001
        else
            value = 0
        selected = 1
        key = 1
    }
    else if mouse_check_button_pressed(mb_left)
    {
        if point_in_circle(_mouse_x, _mouse_y, button_x, button_y, button_radius)
        {
            key = 0
            selected = 1
        }
    }
    else if ((!mouse_check_button(mb_left)) && key == 0 && (!(key_right || keyboard_check(vk_right) || (-key_left) || keyboard_check(vk_left))))
    {
        selected = 0
        key = 0
    }
    if (selected == 1)
    {
        if (key == 0)
            value = clamp(((_mouse_x - draw_x) / sprite_width), 0, max_value)
        audio_sound_gain(global.music, (0.6 * value), 0)
        audio_sound_gain(global.pausenicemusic, (0.6 * value), 0)
    }
    if (key_jump || keyboard_check_pressed(vk_return))
    {
        ini_open("saveData.ini")
        global.musicvolume = ini_write_real("Option", "musicvolume", value)
        ini_close()
        audio_sound_gain(global.music, (0.6 * value), 0)
        audio_sound_gain(global.pausenicemusic, (0.6 * value), 0)
    }
}
if (optionselected == 2)
{
    if (key_right || keyboard_check(vk_right))
    {
        if (value < max_value && (key_attack || keyboard_check(vk_shift)))
            value += 0.0025
        else if (value < max_value)
            value += 0.001
        else
            value = max_value
        selected = 1
        key = 1
        if (!audio_is_playing(sfx_step))
            audio_sound_gain(audio_play_sound(sfx_step, 1, false), (1 * value), 0)
    }
    else if ((-key_left) || keyboard_check(vk_left))
    {
        if (value > 0 && (key_attack || keyboard_check(vk_shift)))
            value -= 0.0025
        else if (value > 0)
            value -= 0.001
        else
            value = 0
        selected = 1
        key = 1
        if (!audio_is_playing(sfx_step))
            audio_sound_gain(audio_play_sound(sfx_step, 1, false), (1 * value), 0)
    }
    else if mouse_check_button_pressed(mb_left)
    {
        if point_in_circle(_mouse_x, _mouse_y, button_x, button_y, button_radius)
        {
            key = 0
            selected = 1
        }
    }
    else if ((!mouse_check_button(mb_left)) && key == 0 && (!(key_right || keyboard_check(vk_right) || (-key_left) || keyboard_check(vk_left))))
    {
        selected = 0
        key = 0
    }
    if (selected == 1)
    {
        if (key == 0)
        {
            if (!audio_is_playing(sfx_step))
                audio_sound_gain(audio_play_sound(sfx_step, 1, false), (1 * value), 0)
            value = clamp(((_mouse_x - draw_x) / sprite_width), 0, max_value)
        }
    }
    if (key_jump || keyboard_check_pressed(vk_return))
    {
        ini_open("saveData.ini")
        global.soundeffectsvolume = ini_write_real("Option", "soundeffectsvolume", value)
        ini_close()
    }
}


