#region Variables
var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
var _mouse_x = (mouse_x - _cam_x)
var _mouse_y = (mouse_y - _cam_y)
stop = false; //For to Stop Fucking
var _stop = false;
with obj_palettechangerscrollbar
{
	if selected == true || input_text == true
		_stop = true;
}
if input_text == true || _stop == true
	stop = true;
#endregion

#region Change Palette 

//Change Palette Set to EDIT
if player.key_right2 && stop == false
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
	ini_open("Custom/"+string(player.characters)+"_"+string(player.customsavedpalette)+"_palettes.ini")
	palettename = ini_read_string("General","PaletteName","Palette 1")		
	ini_close()	
	input = palettename
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
if -player.key_left2 && stop == false
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
	ini_open("Custom/"+string(player.characters)+"_"+string(player.customsavedpalette)+"_palettes.ini")
	palettename = ini_read_string("General","PaletteName","Palette 1")		
	ini_close()	
	input = palettename
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
if player.key_down2 && stop == false
{

	global.oldcolorchoosen = clamp(global.colorchoosen + 1,0,player.colorheight - 1)
}
else if player.key_up2 && stop == false
{
	global.oldcolorchoosen = clamp(global.colorchoosen - 1,0,player.colorheight - 1)
}

#endregion

#region Get Out of Menu


if (player.key_slap2 || keyboard_check_pressed(vk_return)) && stop == false && has_selectedoption <= 0
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
#endregion

#region Export and Import

#region Export
if mouse_check_button_pressed(mb_left) && input_text = false && stop = false
{
    if point_in_rectangle(_mouse_x,_mouse_y,ExportButton.xpos - 28,ExportButton.ypos - 25,ExportButton.xpos + 28,ExportButton.ypos + 28)
	{
		ExportButton.activated = true;
		ExportButton.buffertimer = 10;
		if ExportButton.activated
		event_user(0);
	}
}
#endregion
#region Import
if mouse_check_button_pressed(mb_left) && input_text = false && stop = false
{
    if point_in_rectangle(_mouse_x,_mouse_y,ImportButton.xpos - 28,ImportButton.ypos - 25,ImportButton.xpos + 28,ImportButton.ypos + 28)
	{
		ImportButton.activated = true;
		ImportButton.buffertimer = 10;
		if ImportButton.activated
		event_user(1);
	}
}
#endregion

#endregion

#region Name Editing
if mouse_check_button_pressed(mb_left) && input_text = false && stop = false
{
    if point_in_rectangle(_mouse_x,_mouse_y,480 - 147,yi - 43,480 + 147,yi + 43) && yi <= 500
	{
        input_text = true;	
		keyboard_string = ""
		input = palettename;
	}
	//draw_sprite_ext(spr_palettechanger_textbox,input_text,480,yi,5,1,0,c_white,1);
}
if ( (player.key_jump2 || keyboard_check_pressed(vk_return) ) || player.key_slap2) && input_text = true
{
	input_text = false;
	if player.key_jump2 || keyboard_check_pressed(vk_return)	
	{
		palettename = string(input);
		ini_open("Custom/"+string(player.characters)+"_"+string(player.customsavedpalette)+"_palettes.ini")	
		ini_write_string("General","PaletteName",string(palettename));
		ini_close()
	}
	else
		input = palettename;
}
if input_text = true
{
	if keyboard_check(vk_anykey) && inputbuffer = 0
	{
		input += keyboard_string
		keyboard_string = ""
		inputbuffer = inputmax
	}
	
	if keyboard_check(vk_backspace) && deletebuffer = 0
	{
		input = string_delete(input, string_length(input), 1)
		deletebuffer = deletemax
	}
}
#endregion

#region Misc
#region Showtext
yi = approach(yi,500,5)
if (showtext == true)
{
	if choosen = false
	{
		_message = store_message[_messageindex]
		if _messageindex < array_length(store_message) - 1
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
#endregion
var _sprite = player.spr_playertv_normal;
if floor(image_idnex) >= sprite_get_number(_sprite) - 1
image_idnex = 0
else
image_idnex += 0.35
#endregion