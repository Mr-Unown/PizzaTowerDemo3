if surface_exists(surf_pallete)
{
	#region Surface
	surface_set_target(surf_pallete);
	pal_swap_draw_palette(spr_palette,0,0,0)
	pal_swap_draw_palette(spr_palette,paletteselect,1,0)
	for (var i = 0; i < sprite_get_height(spr_palette); i++) {
	    draw_point_color(1,i,color[i]);
	}
	surface_reset_target();	
	#endregion
}
else if !surface_exists(surf_pallete)
{
	surf_pallete = surface_create(surf_width,surf_height)	
}

if surface_exists(surf_pallete) && (paletteselect >= sprite_get_width(spr_palette) - 1)
{
	pal_swap_set(surf_pallete, 1, true)
}
else if (paletteselect < sprite_get_width(spr_palette) - 1)
	pal_swap_set(spr_palette, paletteselect, false)

if global.draw_peter = true && (character == "P" || character == "N")
{
	if character == "P"
	draw_sprite_ext(spr_peter, -1, x, y, xscale, yscale, image_angle, image_blend, image_alpha)
	else
	draw_sprite_ext(spr_chungus, -1, x, y, xscale, yscale, image_angle, image_blend, image_alpha)
}
else
draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha)

if (character == "P" && sprite_index == spr_taunt && floor(image_index) == 11)
    draw_sprite_ext(spr_promotion, image_index, x, y, 1, yscale, image_angle, image_blend, image_alpha)
	

	
shader_reset()
if flash
{
    shader_set(shd_hit)
	if global.draw_peter = true && (character == "P" || character == "N")
	{
		if character == "P"
		draw_sprite_ext(spr_peter, -1, x, y, xscale, yscale, image_angle, image_blend, image_alpha)
		else
		draw_sprite_ext(spr_chungus, -1, x, y, xscale, yscale, image_angle, image_blend, image_alpha)
	}
	else	
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha)
    if (character == "P" && sprite_index == spr_taunt && floor(image_index) == 11)
        draw_sprite_ext(spr_promotion, image_index, x, y, 1, yscale, image_angle, image_blend, image_alpha)
    shader_reset()
}
//Pizzashield
if pizzashield = true && room != rank_room && room != timesuproom
	draw_sprite_ext(spr_pizzashield, pizzashieldframes , x, y, xscale, yscale, image_angle, image_blend, image_alpha)
if global.freezeframe = false
	pizzashieldframes += 0.35
if pizzashieldframes > 16
	pizzashieldframes = 0

//Spell
if spellshowbuffer > 0
		draw_sprite(spr_dougieicons, (spellselect - 1), x, y - 50)
/*		
draw_set_font(global.smallnumber)
draw_text(x, y - 50,string(instance_number(obj_goop)))
if ds_exists(global.gooproom,ds_type_list)
draw_text(x, y - 70,string(ds_list_size(global.gooproom)))*/