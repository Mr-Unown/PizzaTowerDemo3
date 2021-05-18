scr_getinput()
//Player
if player.character = "P"
characters = "Peppino"
if player.character = "N"
characters = "Noise"
if player.character = "S"
characters = "Snick"
if player.character = "V"
characters = "Vigilante"
if player.character = "PM"
characters = "Pepperman"
if player.character = "D"
characters = "Dougie"
if player.character = "PZ"
characters = "Pizzelle"


if has_selectedoption = true
{
	switch selectedoption
	{
		case paletteoption.palettes:
		#region Palettes
		if (key_up2 || keyboard_check_pressed(vk_up))
		{
			player.paletteselect += 1
		}
		if (key_down2 || keyboard_check_pressed(vk_down))
		{
			player.paletteselect -= 1
		}
		if player.character = "P" || player.character = "PZ"
		{
			player.paletteselect = clamp(player.paletteselect,1,sprite_get_width(player.spr_palette) - 1)
		}
		else
		{
			player.paletteselect = clamp(player.paletteselect,0,sprite_get_width(player.spr_palette) - 1)
		}
		
		#endregion
			break;
		case paletteoption.custom:
		#region Custom
			#region Dirty Scrollbar thingy
			var i = 0;
			repeat(3)
			{
			if scrollID[i] = noone
				with instance_create(x,y,obj_palettechangerscrollbar)
				{
					depth = other.depth - 1
					customcolor = i
					other.scrollID[i] = id		
					ini_open(string(other.characters)+"_palettes.ini")
					if i = 0
						value = (ini_read_real(string(other.characters)+"Colors"+string(other.indexedcolor), "Red", 0) / 255);
					if i = 1
						value = (ini_read_real(string(other.characters)+"Colors"+string(other.indexedcolor), "Green", 0) / 255);
					if i = 2
						value = (ini_read_real(string(other.characters)+"Colors"+string(other.indexedcolor), "Blue", 0) / 255);
					ini_close()
					i += 1
				}
				
			}
			#endregion
		if (key_up2 || keyboard_check_pressed(vk_up))
		{
			indexedcolor = clamp(indexedcolor + 1,0,sprite_get_height(player.spr_palette))
			with obj_palettechangerscrollbar
				selected = false;
			ini_open(string(characters)+"_palettes.ini")
			scrollID[0].value = (ini_read_real(string(characters)+"Colors"+string(indexedcolor), "Red", 0) / 255);
			scrollID[1].value = (ini_read_real(string(characters)+"Colors"+string(indexedcolor), "Green", 0) / 255);
			scrollID[2].value = (ini_read_real(string(characters)+"Colors"+string(indexedcolor), "Blue", 0) / 255);			
			ini_close()
		}
		if (key_down2 || keyboard_check_pressed(vk_down))
		{
			indexedcolor = clamp(indexedcolor - 1,0,sprite_get_height(player.spr_palette))
			with obj_palettechangerscrollbar
				selected = false;			
			ini_open(string(characters)+"_palettes.ini")
			scrollID[0].value = (ini_read_real(string(characters)+"Colors"+string(indexedcolor), "Red", 0) / 255);
			scrollID[1].value = (ini_read_real(string(characters)+"Colors"+string(indexedcolor), "Green", 0) / 255);
			scrollID[2].value = (ini_read_real(string(characters)+"Colors"+string(indexedcolor), "Blue", 0) / 255);
			ini_close()
		}			
		if key_jump2
		{
			ini_open(string(characters)+"_palettes.ini")
			ini_write_real(string(characters)+"Colors"+string(indexedcolor), "Red", customcolor[indexedcolor]);
			ini_write_real(string(characters)+"Colors"+string(indexedcolor), "Green", customcolor[indexedcolor]);
			ini_write_real(string(characters)+"Colors"+string(indexedcolor), "Blue", customcolor[indexedcolor]);		
			ini_close()
			
		}
		player.color[indexedcolor] = make_color_rgb(customcolor[0],customcolor[1],customcolor[2])
		#endregion
			break;
		case paletteoption.characters:
		#region Characters
		if (key_up2 || keyboard_check_pressed(vk_up))
		{
			selectedcharacter = clamp(selectedcharacter + 1,0,7)
			with player
			{
				character = other.playercharacter[other.selectedcharacter]
				scr_characterspr()
			}			
		}
		if (key_down2 || keyboard_check_pressed(vk_down))
		{
			selectedcharacter = clamp(selectedcharacter - 1,0,7)
			with player
			{
				character = other.playercharacter[other.selectedcharacter]
				scr_characterspr()
			}
		}       
		player.selectedcharacter = selectedcharacter
		if selectedcharacter = 2
			player.pogo = true
		else
			player.pogo = false		
		#endregion
			break;
		case paletteoption.hats:
	    #region Hats
		if (key_up2 || keyboard_check_pressed(vk_up))
		{
			player.choosenhat = clamp(player.choosenhat + 1,0,5)
		}
		if (key_down2 || keyboard_check_pressed(vk_down))
		{
			player.choosenhat = clamp(player.choosenhat - 1,0,5)
		}		
		if player.choosenhat = 0
			player.equippedhat = false;
		else
			player.equippedhat = true;
		#endregion
			break;		
	}
}
//Clean up
if selectedoption != paletteoption.custom
{
	
	if instance_exists(obj_palettechangerscrollbar)
		instance_destroy(obj_palettechangerscrollbar)
	scrollID[0] = noone
	scrollID[1] = noone
	scrollID[2] = noone
	with player.id
	{
		scr_playercolors()
	}
}
//Change Options
if ((key_right2 || keyboard_check_pressed(vk_right))) && optionselected > 0 && has_selectedoption = false
{
    optionselected -= 1
    scr_soundeffect(sfx_step)
}
else if ((key_right2 || keyboard_check_pressed(vk_right))) && has_selectedoption = false
{
	optionselected = 3
	scr_soundeffect(sfx_step)
}

if (((-key_left2) || keyboard_check_pressed(vk_left))) && optionselected < 3 && has_selectedoption = false
{
    optionselected += 1
    scr_soundeffect(sfx_step)
}
else if (((-key_left2) || keyboard_check_pressed(vk_left))) && has_selectedoption = false
{
    optionselected = 0
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
//Get Out
if (key_slap2 || keyboard_check_pressed(vk_return)) && has_selectedoption = false
{
	instance_destroy()
	with player
	{
		state = states.comingoutdoor
        image_index = 0
		blackblend = 0
		visible = true
	}
}