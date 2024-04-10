var draw_x = camera_get_view_width(view_camera[0]) /2
var draw_y = camera_get_view_height(view_camera[0]) /2
//Darken BG
draw_set_alpha(0.5)
draw_rectangle_color(-32, -32, 992, 572, c_black, c_black, c_black, c_black, 0)
draw_set_alpha(1)

//Export and Import Buttons
draw_sprite_ext(spr_palettechanger_import,ImportButton.activated,ImportButton.xpos,ImportButton.ypos,1,1,0,c_white,1);
draw_sprite_ext(spr_palettechanger_export,ExportButton.activated,ExportButton.xpos,ExportButton.ypos,1,1,0,c_white,1);

if !surface_exists(surface) 
{
	surface = surface_create(2,10);
	#region Surface
	surface_set_target(surface);
	with player
	{
		draw_clear_alpha(c_white,0)
		pal_swap_draw_palette(spr_palette,0,0,0)
		pal_swap_draw_palette(spr_palette,paletteselect,1,0)
		for (var i = 0; i < colorheight; i++) {
			draw_point_color(1,i,color[i]);
		}
	}
	surface_reset_target();	
	#endregion
}


//Draw Palettes
if surface_exists(surface)
{
	surface_set_target(surface)
	if surface_exists(player.surf_pallete)	
		draw_surface(player.surf_pallete,0,0)
	for (var i = 0; i < player.colorheight; i++) 
	{
		draw_point_color(1,i,color[i]);
	}
	surface_reset_target()
	draw_surface_ext(surface, 96, draw_y - 160,40,40,0,c_white,1)
}
var offsetscale = (0.815 *  clamp(player.colorheight - 1,0,player.colorheight));
draw_sprite_ext(spr_palettechanger_window,-1,96 - 3,(draw_y - 160) - 3,1,1 + offsetscale,0,c_white,1)
draw_sprite(spr_palettechanger_selection,-1,96,(draw_y - 160) + (40 * global.colorchoosen))

//Player Sprite
if surface_exists(surface)
{
pal_swap_set(surface, 1, true);
draw_sprite_ext(player.sprite_index,player.image_index,draw_x - 152,draw_y + 16,4,4,0,c_white,1)
pal_swap_reset();
#region HUD Stuff
//if global.newhud == true
//{
pal_swap_set(surface, 1, true);
draw_sprite_ext(player.spr_playertv_normal, image_idnex, 832, 100, 1, 1, 0, c_white, 1);
pal_swap_reset();

//Added a frame sprite as a quick workaround for
//Character Palettes that modify TV Sprites' Palettes...
draw_sprite_ext(spr_tv_frame, 0, 832, 100, 1, 1, 0, c_white, 1);

//}
/*
else
{
	var _sprite = spr_pepinoHUD;
	switch player.character	
	{
		case "P":
			_sprite = spr_pepinoHUD;
		break;
		case "N":
			_sprite = spr_noiseHUD_idle;
		break;
		case "S":
			_sprite = spr_snickHUD_normal;
		break;
		case "V":
			_sprite = spr_playerV_normalHUD;
		break;
		case "not in the game":
			_sprite = spr_playernot in the game_normalHUD;
		break;
		default:
			_sprite = spr_pepinoHUD;
		break;
		pal_swap_set(surface, 1, true); //Why is this not working wow
		draw_sprite_ext(_sprite, -1, 832, 100, -1, 1, 0, c_white, 1)		
		pal_swap_reset()		
		 
	}
}*/
#endregion
}
//Text
draw_set_font(global.smallfont)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(_draw_x, _draw_y, string_upper(_message))
//Palette Name
draw_sprite_ext(spr_palettechanger_textbox,input_text,480,yi,5,1,0,c_white,1);
draw_set_font(arial_17)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if input_text == true
{
	var length = -(string_width(string(input))/ 2) + string_width(string(input));
	draw_text_color(480, yi, string(input),c_black,c_black,c_black,c_black,1);
	draw_text_color(480 + length, yi, cursor,c_black,c_black,c_black,c_black,1);
}
else
	draw_text_color(480, yi, string(palettename),c_black,c_black,c_black,c_black,1)
//Reset LUWU
draw_set_valign(fa_top)