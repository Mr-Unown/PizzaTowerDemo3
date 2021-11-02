//Base Thing
if (global.savefilechoosen = false)
{
    //font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
	if global.savefile_optionselected = false && global.savefile_fileselected = false
	{
		#region Select all Save Files
		draw_set_color(c_white)
	
	    draw_sprite_ext(spr_savefilebox,0,448,96,1,1,0,image_blend,1)
		
		draw_sprite_ext(spr_savefilebox,1,448,224,1,1,0,image_blend,1)	
		
		draw_sprite_ext(spr_savefilebox,2,448,352,1,1,0,image_blend,1)
		
		draw_set_font(global.font)
		draw_set_halign(fa_center)	
		draw_set_color(c_white)
		draw_text(448, 453, "PRESS UP AND DOWN TO\n SELECT THE SAVE FILE")
		#endregion
	}
	if global.savefile_fileselected = true && event_copy = false
	{
		#region Select Options
		draw_set_color(c_white)
		
		draw_sprite_ext(spr_savefilebox,selectedfile,448,270,1,1,0,image_blend,1)	
		if selectedoption = 2
		{
			draw_sprite_ext(spr_filebutton_confirm,1,571 + 40,286 + 16,1,1,0,image_blend,1)
		}
		else
			draw_sprite_ext(spr_filebutton_confirm,0,571 + 40,286 + 16,1,1,0,image_blend,1)
		if selectedoption = 1
		{
			draw_sprite_ext(spr_filebutton_copy,1,548,286 + 16,1,1,0,image_blend,1)
		}
		else
			draw_sprite_ext(spr_filebutton_copy,0,548,286 + 16,1,1,0,image_blend,1)
		if selectedoption = 0
		{
			draw_sprite_ext(spr_filebutton_trash,1,525 - 40,286 + 16,1,1,0,image_blend,1)
		}
		else
			draw_sprite_ext(spr_filebutton_trash,0,525 - 40,286 + 16,1,1,0,image_blend,1)			
		draw_set_font(global.font)
		draw_set_halign(fa_center)	
		draw_set_color(c_white)
		draw_text(448, 453, "PRESS LEFT AND RIGHT TO\n SELECT THE OPTION")
		#endregion		
	}
#region Mode
if global.savefile_optionselected = true 
{
		switch (selectedoption)
		{
			case 0: //Delete
				draw_set_alpha(0.65)
				draw_rectangle_color(-32, -32, 960 + 32, 540 + 32, c_black, c_black, c_black, c_black, 0)
				draw_set_alpha(1)
				draw_set_font(global.font)
				draw_set_halign(fa_center)
				draw_set_color(c_white)
				draw_text(480, 200, "ARE YOU SURE?")
				if (delete_optionselected == 0)
					draw_text_colour(400, 300, "NO", c_white, c_white, c_white, c_white, 1)
				else
				{
					draw_text_colour(400, 300, "NO", c_black, c_black, c_black, c_black, 1)
					draw_text_colour(400, 300, "NO", c_white, c_white, c_white, c_white, 0.5)
				}
				if (delete_optionselected == 1)
					draw_text_colour(560, 300, "YES", c_red, c_red, c_red, c_red, 1)
				else
				{
					draw_text_colour(560, 300, "YES", c_black, c_black, c_black, c_black, 1)
					draw_text_colour(560, 300, "YES", c_red, c_red, c_red, c_red, 0.5)
				}		
			break;	
			case 1: //Copy

				var _above = (selectedfile - 1 <= -1 ? 2 : selectedfile - 1)
				draw_sprite_ext(spr_savefilebox,_above,448,270 - file1y,1,1,0,image_blend,1)	
				
				draw_sprite_ext(spr_savefilebox,selectedfile,448,270,1,1,0,image_blend,1)	
				
				var _below = (selectedfile + 1)
				draw_sprite_ext(spr_savefilebox,_below,448,270 + file2y,1,1,0,image_blend,1)			
			
				if copy_to_file != selectedfile
				{
					var _ydir = 1
					if vanity_to_file <= -1
						_ydir = -1
					
					draw_sprite_ext(spr_savefile_copy_arrow,-1,448,270,1,_ydir,0,image_blend,1)	
				}
				draw_set_font(global.font)
				draw_set_halign(fa_center)	
				draw_set_color(c_white)
				draw_text(448, 453, "PRESS UP AND DOWN TO\n SELECT THE FILE TO BE OVERWRITTEN")		
				if selectedcopy_to_file = true
				{
					draw_set_alpha(0.65)
					draw_rectangle_color(-32, -32, 960 + 32, 540 + 32, c_black, c_black, c_black, c_black, 0)
					draw_set_alpha(1)
					draw_set_font(global.font)
					draw_set_halign(fa_center)
					draw_set_color(c_white)
					draw_text(480, 200, "ARE YOU SURE?")
					if (overwriteconfirmselection == 0)
						draw_text_colour(400, 300, "NO", c_white, c_white, c_white, c_white, 1)
					else
					{
						draw_text_colour(400, 300, "NO", c_black, c_black, c_black, c_black, 1)
						draw_text_colour(400, 300, "NO", c_white, c_white, c_white, c_white, 0.5)
					}
					if (overwriteconfirmselection == 1)
						draw_text_colour(560, 300, "YES", c_green, c_green, c_green, c_green, 1)
					else
					{
						draw_text_colour(560, 300, "YES", c_black, c_black, c_black, c_black, 1)
						draw_text_colour(560, 300, "YES", c_green, c_green, c_green, c_green, 0.5)
					}	
				}
			
			break;			
		}
}
#endregion
}
