if (selected == 0)
{
    if keyboard_check_pressed(vk_f5)
    {
        instance_create(0, 0, obj_manual)
        selected = 1
    }
    if ((obj_player.key_right2 || keyboard_check_pressed(vk_right)) && optionselected < 2)
    {
        optionselected += 1
        scr_soundeffect(sfx_step)
    }
    else if (((-obj_player.key_left2) || keyboard_check_pressed(vk_left)) && optionselected > 0)
    {
        optionselected -= 1
        scr_soundeffect(sfx_step)
    }
    if ((obj_player.key_jump || keyboard_check_pressed(vk_return)) && optionselected == 0)
    {
        scr_soundeffect(sfx_collecttoppin)
        obj_file1.sprite_index = spr_file1confirm
        selected = 1
        alarm[0] = 60
    }
    if ((obj_player.key_jump || keyboard_check_pressed(vk_return)) && optionselected == 1)
    {
        scr_soundeffect(sfx_collecttoppin)
		obj_file2.sprite_index = spr_file2confirm
        selected = 1
        alarm[1] = 5
    }
    if ((obj_player.key_jump || keyboard_check_pressed(vk_return)) && optionselected == 2)
    {
        scr_soundeffect(sfx_collecttoppin)
		obj_file3.sprite_index = spr_file3confirm
        selected = 1
        alarm[2] = 5
    }
}
var lay_id = layer_get_id("Backgrounds_mainmenulight")
var back_id = layer_background_get_id(lay_id)
layer_background_index(back_id, optionselected)
//Text
xi = 500 + random_range(1, -1);
yi = approach(yi,500,5);
