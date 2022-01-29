#region Draw Screen
	//Disable Default Application Surface
	application_surface_draw_enable(false);
	
	//Screenmelt Alpha
	//var appa = 0.15
	
	var appa = 1;
	if global.screenmelt = 1 && global.panic = 1 && global.panicbg
		appa = lerp(1, 0.45, (global.wave / global.maxwave))
	
	//Copy App Surface to New Surface
	if !surface_exists(d3application_surface)
	{
		d3application_surface = surface_create(960,540);
		surface_copy(d3application_surface,0,0,application_surface);
	}
	else
	{
		gpu_set_blendmode_ext_sepalpha(bm_src_alpha,bm_inv_src_alpha,bm_src_alpha,bm_one);
		//Heat Effect
		if global.visual_temperature = temperature.hot
		{
			scr_desert_shader()
		}		
		else
		{
			surface_set_target(d3application_surface);
			draw_surface_stretched_ext(application_surface, 0, 0, 960, 540, c_white, 1);
			surface_reset_target();				
		}
		gpu_set_blendmode(bm_normal);
	}
	//Ghost Surface
	if !surface_exists(final_application_surface)
	{
		final_application_surface = surface_create(960,540);
	}

	//Draw Thing
	var shader = noone;
	
	//Greyscale/Posterization
	if global.snickchallenge = true && global.minutes < 2
		shader = shd_posterization;
	else if global.panic && global.minutes <= 1
		shader = shd_greyscale;
	else
		shader = noone;
		
	//Draw Application Surface
	surface_set_target(final_application_surface)
	draw_surface_stretched_ext(d3application_surface, 0, 0, 960, 540, c_white, appa);
	surface_reset_target();
	
	
	if shader != noone
	{
		shader_set(shader);
		var fade = shader_get_uniform(shader, "fade")
		shader_set_uniform_f(fade, greyscalefade)
		draw_surface_stretched_ext(final_application_surface, 0, 0, 960, 540, c_white, 1)
		shader_reset();		
	}
	else
		draw_surface_stretched_ext(final_application_surface, 0, 0, 960, 540, c_white, 1)
	
	
#endregion
