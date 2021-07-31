//Inputs
scr_getinput()
if instance_exists(obj_debugcontroller) && obj_debugcontroller.active = true
	return;
//Select your File
if ((key_up2 || keyboard_check_pressed(vk_up)) && selectedfile > 0 && save_fileoptionselected = false && global.savefileselected = false)
{
    selectedfile -= 1
    scr_soundeffect(sfx_step)
}
if ((key_down2 || keyboard_check_pressed(vk_down)) && selectedfile < 2 && save_fileoptionselected = false && global.savefileselected = false)
{
    selectedfile += 1
    scr_soundeffect(sfx_step)
}

//Select your Option
if ((-key_left2 || keyboard_check_pressed(vk_left)) && selectedoption > 0 && save_fileoptionselected = true && global.savefileselected = false)
{
    selectedoption -= 1
    scr_soundeffect(sfx_step)
}
if ((key_right2 || keyboard_check_pressed(vk_right)) && selectedoption < 2 && save_fileoptionselected = true && global.savefileselected = false)
{
    selectedoption += 1
    scr_soundeffect(sfx_step)
}


#region File Manipulation
#region OLD
/*
//Load Save File
if key_jump2 && global.savefileselected = false 
{
	scr_soundeffect(sfx_collecttoppin)
	global.savefile = file[selectedfile] 
	global.savefileselected = true
}
//Delete File 
if key_attack2 && global.savefileselected = false
{
	global.savefile = file[selectedfile] 
    scr_soundeffect(sfx_loseknight)
	scr_soundeffect(sfx_explosion)
    file_delete((("playerData_" + global.savefile) + ".ini"))
}
//copy
if key_shoot2 && global.savefileselected = false
{
	global.savefile = file[selectedfile] 	
	scr_soundeffect(sfx_enemyprojectile)
	switch global.savefile
	{
				case 1: 
				{
				file_copy("playerData_1.ini", "playerData_2.ini")
				show_debug_message("copied save 1 to save 2")
				}
				break;
					case 2: 
					{
					if !key_right
					{
					file_copy("playerData_2.ini", "playerData_3.ini")
					show_debug_message("copied save 2 to save 3")
					}
				if key_right
				{
				file_copy("playerData_2.ini", "playerData_1.ini")	
				show_debug_message("copied save 2 to save 1")
				scr_soundeffect(sfx_breakdance)
				}
						
					}
					break;
		case 3:
		{
					if !key_right //shocking
					{
					}
				if key_right
				{
				file_copy("playerData_3.ini", "playerData_2.ini")	
				show_debug_message("copied save 3 to save 2")
				scr_soundeffect(sfx_breakmetal)
				}
			if key_taunt && key_right
			{
			file_copy("playerData_3.ini", "playerData_1.ini")	
			show_debug_message("copied save 3 to save 1")
			scr_soundeffect(sfx_breakblock1)	
			}
		}
		break;
		}

		}*/
		#endregion
//Firstly Select File
if key_jump2 && global.savefileselected = false && save_fileoptionselected = false
{
	global.savefile = file[selectedfile];
	save_fileoptionselected = true;
	scr_soundeffect(sfx_step);				
}
//then Select Option
if key_jump2 && global.savefileselected = false && save_fileoptionselected = false
{
	switch (selectedoption)
	{
		case 2: //Load Save
			global.savefileselected = true;
			save_fileoptionselected = true;
			scr_soundeffect(sfx_collecttoppin);			
		break;
		case 1: //Copy Save
			save_fileoptionselected = true;
			scr_soundeffect(sfx_collecttoppin);		
		break;
		case 0: //Delete Save
			save_fileoptionselected = true;
			instance_create(x,y,obj_erasefile)
			scr_soundeffect(sfx_collecttoppin);	
		break;
	}
}
#endregion	

//Back out of Character Select
if key_slap2 && global.savefileselected = true && obj_characterselect.characterselected = false 
{
	global.savefileselected = false;
	scr_soundeffect(sfx_step);
}
//Back out of Option
if key_slap2 && save_fileoptionselected = true && global.savefileselected = false
{
	selectedoption = 2;
	save_fileoptionselected = false;
	global.savefile = file[0];
	global.savefileselected = false;
	scr_soundeffect(sfx_step);
}


//Cursor
if !instance_exists(cursori) && global.savefileselected = false
	with instance_create(168,96,obj_cursor) {
		other.cursori = id
		depth = -10
	}
if instance_exists(cursori)	&& global.savefileselected = false
	cursori.y = cursory[selectedfile]
else if instance_exists(cursori)
	instance_destroy(cursori)