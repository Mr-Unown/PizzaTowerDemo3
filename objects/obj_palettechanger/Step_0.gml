#region Change Palette 

//Change Palette Set to EDIT
if player.key_right2
{
	#region Save Palette to INI
	ini_open("Custom/"+string(player.characters)+"_"+string(player.customsavedpalette)+"_palettes.ini")	
		ini_write_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Red", slider[0].finalvalue);
		ini_write_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Green", slider[1].finalvalue);
		ini_write_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Blue", slider[2].finalvalue);
	ini_close()
	#endregion	
	player.customsavedpalette = clamp(player.customsavedpalette + 1,1,5)
	#region Update
	with player
	{
		scr_playercolors();
		customupdate = true;	
	}
	global.oldcolorchoosen = 0;
	global.colorchoosen = 0;
	with obj_palettechangerscrollbar
	{
		readcolor = true;
	}		
	for (var i = 0; i < player.colorheight; i++) 
	{
	   color[i] = player.color[i]
	}		
	
	
	#endregion
}
if -player.key_left2
{
	#region Save Palette to INI
	ini_open("Custom/"+string(player.characters)+"_"+string(player.customsavedpalette)+"_palettes.ini")	
		ini_write_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Red", slider[0].finalvalue);
		ini_write_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Green", slider[1].finalvalue);
		ini_write_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Blue", slider[2].finalvalue);
	ini_close()
	#endregion	
	player.customsavedpalette = clamp(player.customsavedpalette - 1,1,5)
	#region Update
	with player
	{
		scr_playercolors();
		customupdate = true;	
	}
	global.oldcolorchoosen = 0;
	global.colorchoosen = 0;
	with obj_palettechangerscrollbar
	{
		readcolor = true;
	}		
	for (var i = 0; i < player.colorheight; i++) 
	{
	   color[i] = player.color[i]
	}		
	
	
	#endregion
}
	
//Changed Palette to be changed final
if global.colorchoosen != global.oldcolorchoosen
{
	#region Save Palette to INI
	ini_open("Custom/"+string(player.characters)+"_"+string(player.customsavedpalette)+"_palettes.ini")	
		ini_write_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Red", slider[0].finalvalue);
		ini_write_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Green", slider[1].finalvalue);
		ini_write_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Blue", slider[2].finalvalue);
	ini_close()
	#endregion
	global.colorchoosen = clamp(global.oldcolorchoosen,0,player.colorheight - 1)
	with obj_palettechangerscrollbar
	{
		readcolor = true;
	}
}

//Change Palette Changer fake palette
if global.colorchoosen == global.oldcolorchoosen
{
	color[global.colorchoosen] = make_color_rgb(slider[0].finalvalue,slider[1].finalvalue,slider[2].finalvalue)
}
//Change Palette to be changed
if player.key_down2 
{

	global.oldcolorchoosen = clamp(global.colorchoosen + 1,0,player.colorheight - 1)
}
else if player.key_up2
{
	global.oldcolorchoosen = clamp(global.colorchoosen - 1,0,player.colorheight - 1)
}

#endregion

//Get Out
if (player.key_slap2 || keyboard_check_pressed(vk_return)) && has_selectedoption <= 0
{
	#region Save Palette to INI
	ini_open("Custom/"+string(player.characters)+"_"+string(player.customsavedpalette)+"_palettes.ini")	
		ini_write_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Red", slider[0].finalvalue);
		ini_write_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Green", slider[1].finalvalue);
		ini_write_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Blue", slider[2].finalvalue);
	ini_close()
	#endregion	
	with player
	{
		scr_playercolors();
		state = states.comingoutdoor;
		sprite_index = spr_walkfront;
	    image_index = 0;
		blackblend = 0;
		image_blend = make_colour_hsv(0, 0, 0);
		visible = true;
		xscale = -1
		customupdate = true;
	}
	instance_destroy();
}


if (showtext == true)
{
	if choosen = false
	{
		_message = store_message[_messageindex]
		if _messageindex < 3
			_messageindex += 1
		else
			_messageindex = 0
		choosen = true
	}
    if (_draw_y < 35)
		_draw_y += 5
	else
		_draw_y = 35
}
if (showtext == false)
{
    if (_draw_y > -64)
        _draw_y -= 1
	else
	{
		_message = ""
		_draw_y = -64
	}
}