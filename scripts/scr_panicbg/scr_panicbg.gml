//Start
function scr_panicbg_start() {
	if ((!variable_global_exists("panicbg_surface")) || (!surface_exists(global.panicbg_surface)))
	    global.panicbg_surface = surface_create(camera_get_view_width(view_camera[0]) + 128, camera_get_view_height(view_camera[0]) + 128)
	if event_type == ev_draw and event_number == 0
	{
	    surface_set_target(global.panicbg_surface)
	    draw_clear_alpha(c_black, 0)
	    var _cam_x = camera_get_view_x(view_camera[0])
	    var _cam_y = camera_get_view_y(view_camera[0])
		
		var a = layer_get_all();	
		for (var i = 0; i < array_length(a); ++i) 
		{
			var back_id = layer_background_get_id_fixed(layer_get_name(a[i]))
			if back_id != -1 && !layer_get_depth(a[i]) <= 0
			{
				layer_x(a[i], ((layer_get_x(a[i]) - _cam_x) + 64))
				layer_y(a[i], ((layer_get_y(a[i]) - _cam_y) + 64))
			}
		}
		#region OLD shit
		/*
	    var bg1 = layer_get_id("Backgrounds_1")
	    var bg2 = layer_get_id("Backgrounds_2")
	    var bg3 = layer_get_id("Backgrounds_3")
	    var bg4 = layer_get_id("Backgrounds_sky")
	    var bg5 = layer_get_id("Backgrounds_sky2")
	    var bg6 = layer_get_id("Backgrounds_Ground1")
	    var bg7 = layer_get_id("Backgrounds_Ground2")
	    var bg8 = layer_get_id("Backgrounds_far1")
	    var bg9 = layer_get_id("Backgrounds_scroll")
		var bg10 = layer_get_id("Backgrounds_far")
		var bg11 = layer_get_id("Backgrounds_4")	
		var bg12 = layer_get_id("Backgrounds_long")	
	    var bg13 = layer_get_id("Backgrounds_H1")
	    var bg14 = layer_get_id("Backgrounds_H2")	
		var bg15 = layer_get_id("Backgrounds_long2")
		var bg16 = layer_get_id("Backgrounds_5")			
	    layer_x(bg1, ((layer_get_x(bg1) - _cam_x) + 64))
	    layer_y(bg1, ((layer_get_y(bg1) - _cam_y) + 64))
	    layer_x(bg2, ((layer_get_x(bg2) - _cam_x) + 64))
	    layer_y(bg2, ((layer_get_y(bg2) - _cam_y) + 64))
	    layer_x(bg3, ((layer_get_x(bg3) - _cam_x) + 64))
	    layer_y(bg3, ((layer_get_y(bg3) - _cam_y) + 64))
	    layer_x(bg4, ((layer_get_x(bg4) - _cam_x) + 64))
	    layer_y(bg4, ((layer_get_y(bg4) - _cam_y) + 64))
	    layer_x(bg5, ((layer_get_x(bg5) - _cam_x) + 64))
	    layer_y(bg5, ((layer_get_y(bg5) - _cam_y) + 64))
	    layer_x(bg6, ((layer_get_x(bg6) - _cam_x) + 64))
	    layer_y(bg6, ((layer_get_y(bg6) - _cam_y) + 64))
	    layer_x(bg7, ((layer_get_x(bg7) - _cam_x) + 64))
	    layer_y(bg7, ((layer_get_y(bg7) - _cam_y) + 64))
	    layer_x(bg8, ((layer_get_x(bg8) - _cam_x) + 64))
	    layer_y(bg8, ((layer_get_y(bg8) - _cam_y) + 64))
	    layer_x(bg9, ((layer_get_x(bg9) - _cam_x) + 64))
	    layer_y(bg9, ((layer_get_y(bg9) - _cam_y) + 64))
		layer_x(bg10, ((layer_get_x(bg10) - _cam_x) + 64))	
		layer_y(bg10, ((layer_get_y(bg10) - _cam_y) + 64))
	    layer_x(bg11, ((layer_get_x(bg11) - _cam_x) + 64))
	    layer_y(bg11, ((layer_get_y(bg11) - _cam_y) + 64))	
	    layer_x(bg12, ((layer_get_x(bg12) - _cam_x) + 64))
	    layer_y(bg12, ((layer_get_y(bg12) - _cam_y) + 64))	
	
	    layer_x(bg13, ((layer_get_x(bg13) - _cam_x) + 64))
	    layer_y(bg13, ((layer_get_y(bg13) - _cam_y) + 64))
	    layer_x(bg14, ((layer_get_x(bg14) - _cam_x) + 64))
	    layer_y(bg14, ((layer_get_y(bg14) - _cam_y) + 64))	
		
	    layer_x(bg15, ((layer_get_x(bg15) - _cam_x) + 64))
	    layer_y(bg15, ((layer_get_y(bg15) - _cam_y) + 64))		

	    layer_x(bg16, ((layer_get_x(bg16) - _cam_x) + 64))
	    layer_y(bg16, ((layer_get_y(bg16) - _cam_y) + 64))	*/
		#endregion
	}
}
//End
function scr_panicbg_end() {
	if event_type == ev_draw && event_number == 0
	{	
	    gpu_set_blendenable(0)
	    gpu_set_colorwriteenable(0, 0, 0, 1)
	    draw_rectangle(-192, -192, camera_get_view_width(view_camera[0]) + 192, camera_get_view_height(view_camera[0]) + 192, 0)
	    gpu_set_blendenable(1)
	    gpu_set_colorwriteenable(1, 1, 1, 1)
		//Actually Set Shader
	    surface_reset_target()
	    shader_set(shd_panicbg)
	    var panic_id = shader_get_uniform(shd_panicbg, "panic")
	    shader_set_uniform_f(panic_id, (global.wave / global.maxwave))
	    var time_id = shader_get_uniform(shd_panicbg, "time")
	    shader_set_uniform_f(time_id, (current_time / 1000))
	    draw_surface_ext(global.panicbg_surface, (camera_get_view_x(view_camera[0]) - 64), (camera_get_view_y(view_camera[0]) - 64), 1, 1, camera_get_view_angle(view_camera[0]), -1, 1)
	    shader_reset()
	}
}
//Init
function scr_panicbg_init() {
	var layers, layernum = 0;
	//Loop through all layers to find if they are a background layer
	var a = layer_get_all(), i = 0;
	while (i < array_length(a)) 
	{
	   	var back_id = layer_background_get_id_fixed(layer_get_name(a[i]))
		if back_id != -1 && !layer_get_depth(a[i]) <= 0
		{
			layers[layernum++] = a[i]
		}
	   i++
	}
	//If no layers are found get out
	if (!layernum)
	    return;
	//Sort Array
	var _f = function(elm1,elm2)
	{
		return -(layer_get_depth(elm1) - layer_get_depth(elm2));
	}
	array_sort(layers,_f)
	
	#region OLD shit
	/*
	if layer_exists("Backgrounds_far")
	    layers[layernum++] = "Backgrounds_far"
	if layer_exists("Backgrounds_far1")
	    layers[layernum++] = "Backgrounds_far1"
	if layer_exists("Backgrounds_scroll")
	    layers[layernum++] = "Backgrounds_scroll"
	if layer_exists("Backgrounds_1")
	    layers[layernum++] = "Backgrounds_1"
	if layer_exists("Backgrounds_H2")
	    layers[layernum++] = "Backgrounds_H2"	
	if layer_exists("Backgrounds_Ground2")
	    layers[layernum++] = "Backgrounds_Ground2"
	if layer_exists("Backgrounds_long2")
	    layers[layernum++] = "Backgrounds_long2"			
	if layer_exists("Backgrounds_sky")
	    layers[layernum++] = "Backgrounds_sky"
	if layer_exists("Backgrounds_H1")
	    layers[layernum++] = "Backgrounds_H1"		
	if layer_exists("Backgrounds_Ground1")
	    layers[layernum++] = "Backgrounds_Ground1"
	if layer_exists("Backgrounds_long")
	    layers[layernum++] = "Backgrounds_long"	
	if layer_exists("Backgrounds_2")
	    layers[layernum++] = "Backgrounds_2"
	if layer_exists("Backgrounds_3")
	    layers[layernum++] = "Backgrounds_3"
	if layer_exists("Backgrounds_sky2")
	    layers[layernum++] = "Backgrounds_sky2"
	if layer_exists("Backgrounds_4")
	    layers[layernum++] = "Backgrounds_4"	
	if layer_exists("Backgrounds_5")
	    layers[layernum++] = "Backgrounds_5"			
		*/
	#endregion
	
	var bottom_id = layers[0]
	var top_id = layers[(layernum - 1)]
	//Pogging
	layer_script_begin(bottom_id, scr_panicbg_start)
	layer_script_end(top_id, scr_panicbg_end)



}