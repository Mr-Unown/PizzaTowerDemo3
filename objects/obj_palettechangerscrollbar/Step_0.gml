#region Read INI
while readcolor = true
{
	#region Read Colors
	ini_open(string(player.characters)+"_palettes.ini")
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
	readcolor = false;
	#endregion
}
#endregion
#region Draw Position
switch colorchannel
{
	case 0:
	draw_x = 682
	draw_y = 302 +  64
	draw_color = c_red
	break;
	case 1:
	draw_x = 682
	draw_y = 350 +  64
	draw_color = c_green
	break;
	case 2:
	draw_x = 682
	draw_y = 398 +  64
	draw_color = c_blue
	break;

}

#endregion
#region Better Code Pls
#region Variables
scr_getinput()
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
if mouse_check_button_pressed(mb_left)
{
	if point_in_circle(_mouse_x, _mouse_y, button_x, draw_y, button_radius)
    {
        selected = true
	}
}
else if !mouse_check_button(mb_left)
{
	selected = false
}


//Change Value based on Mouse Position
if (selected == 1)
{
	colorvalue = clamp( (_mouse_x - _draw_x) / (sprite_get_width(spr_palettechanger_scrollbar) - 5),0,1)
}

if readcolor = false
{
	finalvalue = round(colorvalue*255);
}




#endregion


