//To Do: Fix Resolutions next time

	application_surface_draw_enable(0)
	//Attempt at Pixel Perfect
	surface_resize(application_surface, 960, 540);
	var winh = window_get_height()
	var winw = window_get_width()
	var apph = window_get_height()
	var appw = (apph * 1.77777777777778)
	var appx = ((winw - appw) / 2)
	//Screenmelt Alpha
	var appa = 1
	if global.screenmelt = 1 && global.panic = 1 && global.panicbg
		appa = lerp(1, 0.534, (global.wave / global.maxwave))
	//Draw Thing
	shader_set(shd_greyscale);
	var fade = shader_get_uniform(shd_greyscale, "fade")
    shader_set_uniform_f(fade, greyscalefade)
	draw_surface_stretched_ext(application_surface, appx, 0, appw, apph, c_white, appa)
	shader_reset();		

