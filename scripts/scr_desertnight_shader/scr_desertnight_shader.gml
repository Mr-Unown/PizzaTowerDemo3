#region Foreground
function scr_desert_foregroundshader_init() {
	var layernum = 0;
	layers[0] = noone;
	if !variable_instance_exists(id,"desert_surface")
		desert_surface = noone;
	var a = layer_get_all(), i = 0;
	while (i < array_length(a)) 
	{
		var els = layer_get_all_elements(a[i]);
		if (layer_get_element_type(els[0]) != layerelementtype_background)
		{
			layers[layernum++] = { 
				u_id : a[i],
				x_pos : layer_get_x(a[i]),
				y_pos : layer_get_y(a[i]),
				h_speed : layer_get_hspeed(a[i]),
				v_speed : layer_get_vspeed(a[i])
			}
		}
		i++
	}
	//Sort Array
	var _f = function(elm1,elm2)
	{
		return -(layer_get_depth(elm1.u_id) - layer_get_depth(elm2.u_id));
	}
	array_sort(layers,_f)	

	//Pogging
	#region Start and End
	//Start
	scr_desert_foregroundshader_start = function() {

	if !surface_exists(desert_surface)
		desert_surface = surface_create(room_width,room_height);
	else if surface_get_width(desert_surface) != room_width || surface_get_height(desert_surface) != room_height
		surface_resize(desert_surface,room_width,room_height)
		
	if event_type == ev_draw && event_number == 0
	{
		surface_set_target(desert_surface)
		draw_clear_alpha(c_white,0)

	}
}
	//End
	scr_desert_foregroundshader_end = function() {
	if event_type == ev_draw && event_number == 0
	{	
		surface_reset_target();
		draw_surface_ext(desert_surface,0,0,1,1,0,c_white,1)
		draw_surface_ext(desert_surface,0,0,1,1,0,c_blue,0.17)	
		with obj_secretwall { 
			visible = false;
			if !surface_exists(secretsurface)
			{
				secretsurface = surface_create(room_width,room_height);
				surface_set_target(secretsurface);
				draw_clear_alpha(c_white,0);
				gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha);
				for (var i = 0; i < array_length(layername); i++) 
				{
					var tilemap = layer_tilemap_get_id_fixed(layername[i]);
					draw_tilemap(tilemap,0,0);
				}	
				gpu_set_blendmode(bm_normal);	
				surface_reset_target();	
			}
			else
			{
				draw_surface_ext(secretsurface,0,0,1,1,0,c_white,secretalpha);
				draw_surface_ext(secretsurface,0,0,1,1,0,c_blue,0.17 * secretalpha);
			}
		}		
	}
}
	
	#endregion
	
	var bottom_id = layers[0].u_id
	var top_id = layers[(layernum - 1)].u_id
	layer_script_begin(bottom_id, scr_desert_foregroundshader_start)
	layer_script_end(top_id, scr_desert_foregroundshader_end)
	
	
}
#endregion
