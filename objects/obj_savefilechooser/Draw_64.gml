//Base Thing
if (global.savefilechoosen = false)
{
    //font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
    draw_set_color(c_white)
	
    draw_sprite_ext(spr_savefilebox,0,448,96,1,1,0,image_blend,1)
	
	draw_sprite_ext(spr_savefilebox,1,448,224,1,1,0,image_blend,1)	
	
	draw_sprite_ext(spr_savefilebox,2,448,352,1,1,0,image_blend,1)
	
    draw_set_font(global.font)
    draw_set_halign(fa_center)	
	draw_set_color(c_white)
    draw_text(448, 453, "PRESS UP AND DOWN TO\n SELECT THE SAVE FILE")
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
				draw_set_alpha(0.65)
				draw_rectangle_color(-32, -32, 960 + 32, 540 + 32, c_black, c_black, c_black, c_black, 0)
				draw_set_alpha(1)
				draw_set_font(global.font)
				draw_set_halign(fa_center)
				draw_set_color(c_white)
				draw_text(480, 200, "THE PROGRAMMER HAS A NAP!\nHOLD OUT! PROGRAMMER!")
			break;			
		}
}
#endregion

