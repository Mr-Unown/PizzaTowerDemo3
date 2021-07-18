//Inputs
scr_getinput()
if instance_exists(obj_debugcontroller) && obj_debugcontroller.active = true
	return;
//Select your Car
if ((key_up2 || keyboard_check_pressed(vk_up)) && selectedfile > 0 && global.savefileselected = false)
{
    selectedfile -= 1
    scr_soundeffect(29)
}
if ((key_down2 || keyboard_check_pressed(vk_down)) && selectedfile < 2 && global.savefileselected = false)
{
    selectedfile += 1
    scr_soundeffect(29)
}
//Load Save File
if key_jump2 && global.savefileselected = false {
scr_soundeffect(7)
global.savefile = file[selectedfile] 
global.savefileselected = true
}
//Back out of Character Select
if key_slap2 && global.savefileselected = true && obj_characterselect.characterselected = false {
global.savefile = file[0] 	
global.savefileselected = false
scr_soundeffect(29)
}
	//delete 
	 if key_attack2 && global.savefileselected = false
    {
    global.savefile = file[selectedfile] 
    scr_soundeffect(sfx_loseknight)
    file_delete((("playerData_" + global.savefile) + ".ini"))
    }
		//copy
		if key_shoot2 && global.savefileselected = false
		{
		 global.savefile = file[selectedfile] 	
		 scr_soundeffect(sfx_enemyprojectile)
		/* 
        switch to check what it saves to. 
		right is used here to do the inverse.
	    so it'll save 2 to 1 if you hold right if you're on save 2. 
      	if you're on save 2 and don't hold right, it'll save to save 3.
		pretty nifty, right? - soda
		*/
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