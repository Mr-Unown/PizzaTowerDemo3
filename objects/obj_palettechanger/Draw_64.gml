var draw_x = camera_get_view_width(view_camera[0]) /2
var draw_y = camera_get_view_height(view_camera[0]) /2
//Darken BG
draw_set_alpha(0.5)
draw_rectangle_color(-32, -32, 992, 572, c_black, c_black, c_black, c_black, 0)
draw_set_alpha(1)

if !surface_exists(surface)
{
	surface = surface_create(2,10);
	if surface_exists(player.surf_pallete)
		surface_copy(surface,0,0,player.surf_pallete);
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
draw_sprite_ext(player.spr_playertv_normal, -1, 832, 100, 1, 1, 0, c_white, 1);
pal_swap_reset();

//Added a frame sprite as a quick workaround for
//Character Palettes that modify TV Sprites' Palettes...
draw_sprite_ext(spr_tv_frame, -1, 832, 100, 1, 1, 0, c_white, 1);

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
		case "PZ":
			_sprite = spr_playerPZ_normalHUD;
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
draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(500 + random_range(1, -1), yi, string_upper(palettename))
