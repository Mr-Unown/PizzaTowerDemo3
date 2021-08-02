//Input
scr_getinput()
//Select your Option
if (-key_left2 || keyboard_check_pressed(vk_left)) && delete_optionselected > 0 && global.savefilechoosen = false && !key_jump2
{
    delete_optionselected -= 1
    scr_soundeffect(sfx_step)
}
if (key_right2 || keyboard_check_pressed(vk_right)) && delete_optionselected < 1 && global.savefilechoosen = false && !key_jump2
{
    delete_optionselected += 1
    scr_soundeffect(sfx_step)
}
if inputbuffer = false
{
	if delete_optionselected == 1 && (key_jump || keyboard_check_pressed(vk_return)) && global.savefile_optionselected = true 
	{
		file_delete((("playerData_" + global.savefile) + ".ini"))
		scr_soundeffect(sfx_breakblock1)
		delete_optionselected = 0;
		global.savefile_optionselected = false;
		inputbuffer = true;
		alarm[0] = 5;
	}
	if delete_optionselected == 0 && (key_jump || keyboard_check_pressed(vk_return)) && global.savefile_optionselected = true
	{
		scr_soundeffect(sfx_enemyprojectile)
		delete_optionselected = 0;
		global.savefile_optionselected = false;
		inputbuffer = true;		
		alarm[0] = 5;
	
	}
}

