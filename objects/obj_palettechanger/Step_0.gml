#region Change Palette 

//Changed Palette to be changed final
if global.colorchoosen != global.oldcolorchoosen
{
	#region Save Palette to INI
	ini_open(string(player.characters)+"_palettes.ini")	
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
	ini_open(string(player.characters)+"_palettes.ini")	
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
