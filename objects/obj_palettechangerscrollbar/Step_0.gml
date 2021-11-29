#region Read INI
while readcolor = true
{
	selected = false;
	input_text = false;
	#region Read Colors
	ini_open("Custom/"+string(player.characters)+"_"+string(player.customsavedpalette)+"_palettes.ini")
	switch colorchannel
	{
		case 0:
		colorvalue = ini_read_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Red", 0)/255;
		break;
		case 1:
		colorvalue = ini_read_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Green", 0)/255;
		break;
		case 2:
		colorvalue = ini_read_real(string(player.characters)+"Colors"+string(global.colorchoosen), "Blue", 0)/255;
		break;		
	}
	ini_close()
	finalvalue = round(colorvalue*255);
	input = string(finalvalue);
	readcolor = false;
	#endregion
}
#endregion
#region Draw Position
switch colorchannel
{
	case 0:
	draw_x = 682
	draw_y = 302 +  32
	draw_color = c_red
	break;
	case 1:
	draw_x = 682
	draw_y = 350 +  32
	draw_color = c_green
	break;
	case 2:
	draw_x = 682
	draw_y = 398 +  32
	draw_color = c_blue
	break;

}

#endregion
#region Better Code Pls
#region Variables
//scr_getinput()
player = obj_palettechanger.player
var top_x = draw_x - sprite_get_xoffset(spr_palettechanger_scrollbar),top_y = draw_y - sprite_get_yoffset(spr_palettechanger_scrollbar), bottom_x = draw_x + sprite_get_xoffset(spr_palettechanger_scrollbar),bottom_y = draw_y + sprite_get_yoffset(spr_palettechanger_scrollbar);
var _draw_x = top_x + 4
button_x = (_draw_x + ((sprite_get_width(spr_palettechanger_scrollbar) - 5) * colorvalue))
var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
var button_radius = (sprite_get_width(spr_palettechanger_scrollbarbutton) / 2)
var _mouse_x = (mouse_x - _cam_x)
var _mouse_y = (mouse_y - _cam_y)
#endregion

//Check if Mouse Click in Button Radius
if mouse_check_button_pressed(mb_left) && input_text = false && obj_palettechanger.stop = false
{
	if point_in_circle(_mouse_x, _mouse_y, button_x, draw_y, button_radius)
    {
        selected = true
	}
}
else if !mouse_check_button(mb_left) && input_text = false
{
	selected = false
}


//Change Value based on Mouse Position
if (selected == 1)
{
	colorvalue = clamp( (_mouse_x - _draw_x) / (sprite_get_width(spr_palettechanger_scrollbar) - 5),0,1)
	input = round(colorvalue*255);
}


#region Text
if mouse_check_button_pressed(mb_left) && obj_palettechanger.stop = false && selected = false && input_text = false && obj_palettechanger.stop = false
{
	//if point_in_circle(_mouse_x, _mouse_y, button_x, draw_y, button_radius)
	var _button_x = bottom_x + 8 + sprite_get_xoffset(spr_palettechanger_textbox);
    if point_in_rectangle(_mouse_x,_mouse_y,_button_x - sprite_get_xoffset(spr_palettechanger_textbox),draw_y - sprite_get_yoffset(spr_palettechanger_textbox),_button_x + sprite_get_xoffset(spr_palettechanger_textbox), draw_y + sprite_get_yoffset(spr_palettechanger_textbox))
	{
        input_text = true
		keyboard_lastchar = ""
	}
}
if ((player.key_jump2 || keyboard_check_pressed(vk_return)) || player.key_slap2) && selected = false && input_text = true
{
	input_text = false;
	if player.key_jump2 || keyboard_check_pressed(vk_return)		 
		colorvalue = real(input)/255;
	else
		input = string(finalvalue);
}
if input_text = true
{
	var is_number = string_digits(keyboard_lastchar), 
	is_backspace = keyboard_check(vk_backspace), 
	_keypressed = (string_length(is_number) == true ? string_length(is_number) : is_backspace); //Funny Tenary
	if _keypressed && (keyboard_check_pressed(vk_anykey))
	{ 
		if is_backspace && string_length(input) > 0
			input = string_delete(input, string_length(input), 1);
		else if !is_backspace
			input += string(keyboard_lastchar); //it already returns as a string lmao
	
		if (string_length(input) > 3)
		{
			input = string_copy(input, 1, 3);
		}	
	}
}

switch input
{
	case "":
		input = "0"
	break;
	default: 
		input = string(clamp(real(input),0,255));
	break;
}

#endregion


#endregion
//Done All
if readcolor = false
	finalvalue = round(colorvalue*255);
