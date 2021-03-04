//Inputs
scr_getinput()

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