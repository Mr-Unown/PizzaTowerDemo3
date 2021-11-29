//Inputs
scr_getinput()
if global.shellactivate == true//instance_exists(obj_debugcontroller) && obj_debugcontroller.active = true
	return;
	
//Select your Option
if ((-key_left2 || keyboard_check_pressed(vk_left)) && optionselected > 0 && global.savefilechoosen = false)
{
    optionselected -= 1
    scr_soundeffect(sfx_step)
}
if ((key_right2 || keyboard_check_pressed(vk_right)) && optionselected < 1 && global.savefilechoosen = false)
{
    optionselected += 1
    scr_soundeffect(sfx_step)
}

if (optionselected == 1 && (key_jump || keyboard_check_pressed(vk_return)))
{
	file_delete((("playerData_" + global.savefile) + ".ini"))
    scr_soundeffect(sfx_breakblock1)
	global.savefile_optionselected = false;
	with obj_savefilechooser
	{
		inputbuffer = 100;
	}
    instance_destroy()
}
if (key_slap2 || keyboard_check_pressed(vk_escape) || (optionselected == 0 && (key_jump || keyboard_check_pressed(vk_return))))
{
    scr_soundeffect(sfx_enemyprojectile)
	global.savefile_optionselected = false;
	with obj_savefilechooser
	{
		inputbuffer = 100;
	}	
    instance_destroy()
}


