//Inputs
scr_getinput()
if (instance_exists(obj_debugcontroller) && obj_debugcontroller.active = true)
	 return;
if global.savefilechoosen = false
{
	//Select your File
	if ((key_up2 || keyboard_check_pressed(vk_up)) && selectedfile > 0) && global.savefile_fileselected = false && global.savefile_optionselected = false
	{
	    selectedfile -= 1
	    scr_soundeffect(sfx_step)
	}
	if ((key_down2 || keyboard_check_pressed(vk_down)) && selectedfile < 2) && global.savefile_fileselected = false && global.savefile_optionselected = false
	{
	    selectedfile += 1
	    scr_soundeffect(sfx_step)
	}
	//Select your Option
	if ((-key_left2 || keyboard_check_pressed(vk_left)) && selectedoption > 0) && global.savefile_fileselected = true && global.savefile_optionselected = false
	{
	    selectedoption -= 1
	    scr_soundeffect(sfx_step)
	}
	if ((key_right2 || keyboard_check_pressed(vk_right)) && selectedoption < 2) && global.savefile_fileselected = true && global.savefile_optionselected = false
	{
		selectedoption += 1
		scr_soundeffect(sfx_step)
	}

#region File Stuff

	#region Choose
	if key_jump && global.savefile_optionselected = false && global.savefile_fileselected = false //Firstly Select File
	{	
		global.savefile = file[selectedfile];
		global.savefile_fileselected = true;
		scr_soundeffect(sfx_step);				
	}
	else if key_jump && inputbuffer = false && global.savefile_optionselected = false && global.savefile_fileselected = true && global.savefilechoosen = false  //then Select Option
	{
		switch (selectedoption)
		{
			case 2: //Load Save
				global.savefilechoosen = true;
				global.savefile_optionselected = true;
				scr_soundeffect(sfx_collecttoppin);		
				inputbuffer = true;
				alarm[0] = 5
			break;
			case 1: //Copy Save
				copy_to_file = selectedfile
				selectedcopy_to_file = false;
				global.savefile_optionselected = true;
				scr_soundeffect(sfx_collecttoppin);		
				inputbuffer = true;
				alarm[0] = 5				
			break;
			case 0: //Delete Save
				global.savefile_optionselected = true;
				scr_soundeffect(sfx_collecttoppin);	
				inputbuffer = true;
				alarm[0] = 5				
			break;
		}
	}
	#endregion
	
	#region File Manipilation
	if global.savefile_optionselected = true 
	{
		switch (selectedoption)
		{
			case 0: //Delete
			scr_savefile_delete();			
			break;
			case 1: //Copy
			scr_savefile_copy();
			break;
		}
	}
	#endregion
	
#endregion	
}

if key_slap2 && global.savefilechoosen = false && global.savefile_optionselected = false && global.savefile_fileselected = true //Back out of File
{
	global.savefile = file[0];
	global.savefile_fileselected = false;
	scr_soundeffect(sfx_enemyprojectile);				
}
else if key_slap2 && global.savefilechoosen = false && global.savefile_optionselected = true && global.savefile_fileselected = true && selectedcopy_to_file = false //Back out of Option
{
	delete_optionselected = 0;
	selectedoption = 2;
	selectedcopy_to_file = false;
	global.savefile_optionselected = false;
	scr_soundeffect(sfx_enemyprojectile);
}
else if key_slap2 && global.savefilechoosen = false && global.savefile_optionselected = true && global.savefile_fileselected = true && selectedcopy_to_file = true //Back out of Copying
{
	scr_soundeffect(sfx_enemyprojectile)
	overwriteconfirmselection = 0;
	selectedcopy_to_file = false;			
}
else if key_slap2 && global.savefilechoosen = true && obj_characterselect.characterselected = false //Back out of Character Select
{
	delete_optionselected = 0;
	selectedoption = 2;
	selectedcopy_to_file = false;
	global.savefile_optionselected = false;	
	global.savefilechoosen = false;
	scr_soundeffect(sfx_step);
}



//Cursor
if !instance_exists(cursori) && global.savefilechoosen = false
{
	with instance_create(168,96,obj_cursor) 
	{
		other.cursori = id
		depth = -10
	}
}
if instance_exists(cursori)	&& global.savefilechoosen = false
{
	if global.savefile_optionselected = false && global.savefile_fileselected = false
		cursori.y = cursory[selectedfile];
	else
		cursori.y = 270;
}
else if instance_exists(cursori)
	instance_destroy(cursori)
	
	
#region OLD
/*
//Load Save File
if key_jump2 && global.savefilechoosen = false 
{
	scr_soundeffect(sfx_collecttoppin)
	global.savefile = file[selectedfile] 
	global.savefilechoosen = true
}
//Delete File 
if key_attack2 && global.savefilechoosen = false
{
	global.savefile = file[selectedfile] 
    scr_soundeffect(sfx_loseknight)
	scr_soundeffect(sfx_explosion)
    file_delete((("playerData_" + global.savefile) + ".ini"))
}
//cool epic soda code here
//copy
if key_shoot2 && global.savefilechoosen = false
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
