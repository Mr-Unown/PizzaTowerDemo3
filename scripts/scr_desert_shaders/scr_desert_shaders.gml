#region Foreground
function scr_desert_foregroundshader_init(){
	var layernum = 0;
	layers[0][0] = noone
	if !variable_instance_exists(id,"desert_surface")
		desert_surface = noone;
	var a = layer_get_all(), i = 0;
	while (i < array_length(a)) 
	{
		var els = layer_get_all_elements(a[i]);
		if (layer_get_element_type(els[0]) != layerelementtype_background)
		{
			layers[layernum++][0] = a[i]
			layers[layernum][1] = { 
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
		return -(layer_get_depth(elm1[0]) - layer_get_depth(elm2[0]));
	}
	array_sort(layers,_f)	

	//Pogging
	#region
	//Start
	scr_desert_foregroundshader_start = function() {
	if !surface_exists(desert_surface)
		desert_surface = surface_create(camera_get_view_width(view_camera[0]) + 128, camera_get_view_height(view_camera[0]) + 128)
	if event_type == ev_draw and event_number == 0
	{
	    surface_set_target(desert_surface)
	    draw_clear_alpha(c_black, 0)
	    var _cam_x = camera_get_view_x(view_camera[0])
	    var _cam_y = camera_get_view_y(view_camera[0])
		
		for (var i = 0; i < array_length(layers); ++i) 
		{
			layer_x(layers[i][0], ((layers[i][1].x_pos - _cam_x) + 64))
			layer_y(layers[i][0], ((layers[i][1].y_pos - _cam_y) + 64))
			
		}
	}
}
	//End
	scr_desert_foregroundshader_end = function() {
	if event_type == ev_draw && event_number == 0
	{	
	    gpu_set_blendenable(0)
	    gpu_set_colorwriteenable(0, 0, 0, 1)
	    draw_rectangle(-192, -192, camera_get_view_width(view_camera[0]) + 192, camera_get_view_height(view_camera[0]) + 192, 0)
	    gpu_set_blendenable(1)
	    gpu_set_colorwriteenable(1, 1, 1, 1)
		//Actually Set Shader
	    surface_reset_target()
		shader_set(shd_wave);
		var uTime = shader_get_uniform(shd_wave, "Time");
		var uTexel = shader_get_uniform(shd_wave, "Texel");	
		shader_set_uniform_f(uTime, current_time);
		var tex = surface_get_texture(desert_surface)
		shader_set_uniform_f(uTexel, texture_get_texel_width(tex), texture_get_texel_height(tex));		
		 draw_surface_ext(desert_surface, (camera_get_view_x(view_camera[0]) - 64), (camera_get_view_y(view_camera[0]) - 64), 1, 1, camera_get_view_angle(view_camera[0]), -1, 1)
		shader_reset();
	}
}
	
	#endregion
	var bottom_id = layers[0]
	var top_id = layers[(layernum - 1)]
	layer_script_begin(bottom_id, scr_desert_foregroundshader_start)
	layer_script_end(top_id, scr_desert_foregroundshader_end)
}
#endregion

function scr_desert_backgroundshader(){
	var layers, layernum = 0;
	var a = layer_get_all(), i = 0;
	while (i < array_length(a)) 
	{
		var els = layer_get_all_elements(a[i]);
		if (layer_get_element_type(els) != layerelementtype_background)
		{
			layers[layernum++] = a[i]
		}
		i++
	}
	//Sort Array
	var _f = function(elm1,elm2)
	{
		return -(layer_get_depth(elm1) - layer_get_depth(elm2));
	}
	array_sort(layers,_f)	
	var bottom_id = layers[0]
	var top_id = layers[(layernum - 1)]
	//Pogging
	layer_script_begin(bottom_id, scr_desert_foregroundshader_start)
	layer_script_end(top_id, scr_desert_foregroundshader_end)	
}