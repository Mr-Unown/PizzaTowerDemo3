#region Select Palette 


#endregion

#region Change Palette


//Change Player Palette
var _color = make_color_rgb(slider[0].finalvalue,slider[1].finalvalue,slider[2].finalvalue);
with player
{
	color[global.colorchoosen] = _color
}
//color[i] = make_color_rgb(colored[i,0],colored[i,1],colored[i,2])

/*	for (var i = 0; i < colorheight; i++) {
	    draw_point_color(1,i,color[i]);
	}*/

#endregion

//Get Out
if (player.key_slap2 || keyboard_check_pressed(vk_return)) && has_selectedoption = false
{
	with player
	{
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
