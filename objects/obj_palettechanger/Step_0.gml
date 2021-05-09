scr_getinput()
switch selectedoption
{
    case paletteoption.palettes:
        
        break;
    case paletteoption.custom:
        
        break;
    case paletteoption.characters:
        
        break;
    case paletteoption.hats:
        
        break;		
}
//Change Options
if ((key_up2 || keyboard_check_pressed(vk_up)) && optionselected > 0) && has_selectedoption = false
{
    optionselected -= 1
    scr_soundeffect(sfx_step)
}
if ((key_down2 || keyboard_check_pressed(vk_down)) && optionselected < 3) && has_selectedoption = false
{
    optionselected += 1
    scr_soundeffect(sfx_step)
}
//Select Option
if ((key_jump || keyboard_check_pressed(vk_return)) && has_selectedoption = false)
{
	selectedoption = paletteoptions[optionselected]
	has_selectedoption = true
}
//Deselect Option
if (key_slap2 || keyboard_check_pressed(vk_return)) && has_selectedoption = true
{
	has_selectedoption = false
}