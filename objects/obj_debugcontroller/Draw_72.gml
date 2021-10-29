if showcollisions == true
{
	with all
	{
		draw_set_color(c_white);
		draw_rectangle(bbox_left + 1,bbox_top + 1,bbox_right - 1,bbox_bottom - 1,true);
		draw_rectangle(bbox_left - 1,bbox_top - 1,bbox_right + 1,bbox_bottom + 1,true);
		draw_set_color(c_red);
		draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,false);
		if mask_index != noone && mask_index != -1 && mask_index != undefined && sprite_exists(mask_index)
			draw_sprite_ext(mask_index,image_index,x,y,image_xscale,image_yscale,image_alpha,c_white,0.5);
	}
}