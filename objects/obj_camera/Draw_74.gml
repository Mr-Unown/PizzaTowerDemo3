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
		surface_copy(d3application_surface,0,0,application_surface);
	}
		
	//Heat Effect
	if global.visual_temperature = temperature.hot
	{
		scr_desert_shader()
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
	gpu_set_blendenable(false);
	draw_surface_stretched_ext(d3application_surface, 0, 0, 960, 540, c_white, appa)
	gpu_set_blendenable(true);
	surface_reset_target()
	
	
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
	/*
	if !surface_exists(d3application_surface)
	{
		d3application_surface = surface_create(960,540)
		surface_copy(d3application_surface,0,0,application_surface)
	}
	else
		surface_copy(d3application_surface,0,0,application_surface)
	//Heat Effect
	if global.visual_temperature = temperature.hot
	{
		shader_set(shd_wave);
		surface_set_target(d3application_surface); //Set the surface
		var uTime = shader_get_uniform(shd_wave, "Time");
		var uTexel = shader_get_uniform(shd_wave, "Texel");	
		shader_set_uniform_f(uTime, current_time);
		var tex = surface_get_texture(application_surface)
		shader_set_uniform_f(uTexel, texture_get_texel_width(tex), texture_get_texel_height(tex));		
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
		shader_reset();
	}*/
/*
//Actually Set Shader
shader_set(shd_wave);
var uTime = shader_get_uniform(shd_wave, "Time");
var uTexel = shader_get_uniform(shd_wave, "Texel");	
shader_set_uniform_f(uTime, current_time);
//var tex = sprite_get_texture(spr_background, -1);
var tex = surface_get_texture(global.heatwavesurface)
shader_set_uniform_f(uTexel, texture_get_texel_width(tex), texture_get_texel_height(tex));
draw_surface_ext(global.heatwavesurface, (camera_get_view_x(view_camera[0]) - 64), (camera_get_view_y(view_camera[0]) - 64), 1, 1, camera_get_view_angle(view_camera[0]), -1, 1)
//draw_sprite_ext(spr_background, 0, x, y, xscale, yscale, 0, c_white, 1);
shader_reset();*/
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
    draw_surface_stretched_ext(application_surface, appx, 0, appw, apph, c_white, appa)
}
else
    application_surface_draw_enable(true)
	*/