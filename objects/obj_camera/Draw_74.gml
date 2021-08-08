//To Do: Fix Resolutions next time

	application_surface_draw_enable(0)
	//Attempt at Pixel Perfect
	surface_resize(application_surface, 1920, 1080);
	
	/*
	var winh = window_get_height()
	var winw = window_get_width()
	var apph = window_get_height()
	var appw = (apph * 1.77777777777778)
	var appx = ((winw - appw) / 2)
	*/
	
	//Screenmelt Alpha
	var appa = 1
	if global.screenmelt = 1 && global.panic = 1 && global.panicbg
		appa = lerp(1, 0.534, (global.wave / global.maxwave))
	//Draw Thing
	var shader = shd_greyscale;
	if global.snickchallenge = true && global.minutes < 2
		shader = shd_posterization
	shader_set(shader);
	var fade = shader_get_uniform(shader, "fade")
    shader_set_uniform_f(fade, greyscalefade)
	draw_surface_stretched_ext(application_surface, 0, 0, 960, 540, c_white, appa)
	shader_reset();		

