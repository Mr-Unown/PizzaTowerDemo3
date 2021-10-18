#region Draw Screen

	//Screenmelt Alpha
	var appa = 1
	if global.screenmelt = 1 && global.panic = 1 && global.panicbg
		appa = lerp(1, 0.45, (global.wave / global.maxwave))
	//Draw Thing
	var shader = noone;
	
	if global.snickchallenge = true && global.minutes < 2
		shader = shd_posterization;
	else if global.panic && global.minutes <= 1
		shader = shd_greyscale;
	else
		shader = noone;
		
	if shader != noone
	{
		shader_set(shader);
		var fade = shader_get_uniform(shader, "fade")
		shader_set_uniform_f(fade, greyscalefade)
		draw_surface_stretched_ext(application_surface, 0, 0, 960, 540, c_white, appa)
		shader_reset();		
	}
	else
	{
		draw_surface_stretched_ext(application_surface, 0, 0, 960, 540, c_white, appa)
	}
		
#endregion
/*
if (global.panic == 1 && global.panicbg)
{
    application_surface_draw_enable(false)
    var winh = window_get_height()
    var winw = window_get_width()
    var apph = window_get_height()
    var appw = (apph * 1.7777777777777777)
    var appx = ((winw - appw) / 2)
    var appa = lerp(1, 0.33999999999999997, (global.wave / global.maxwave))
    draw_surface_stretched_ext(application_surface, appx, 0, appw, apph, 16777215, appa)
}
else
    application_surface_draw_enable(true)
	*/