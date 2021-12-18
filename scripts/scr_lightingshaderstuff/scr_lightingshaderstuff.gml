/*
#region Desert
global.heatwavesurface = noone
function layer_desert_start()
{
	if global.desertnight = true || global.panic { return false; }
    if event_type == ev_draw && event_number == 0
    {
		if ((!variable_global_exists("heatwavesurface")) || (!surface_exists(global.heatwavesurface)))
			global.heatwavesurface = surface_create(camera_get_view_width(view_camera[0]) + 128, camera_get_view_height(view_camera[0]) + 128)
		surface_set_target(global.heatwavesurface)
		draw_clear_alpha(c_black, 0)
    }
}
function layer_desert_end()
{
	if global.desertnight = true || global.panic { return false; }
    if event_type == ev_draw && event_number == 0
    {
	    gpu_set_blendenable(0)
	    gpu_set_colorwriteenable(0, 0, 0, 1)
	    draw_rectangle(-192, -192, camera_get_view_width(view_camera[0]) + 192, camera_get_view_height(view_camera[0]) + 192, 0)
	    gpu_set_blendenable(1)
	    gpu_set_colorwriteenable(1, 1, 1, 1)
	    surface_reset_target()		
		if surface_exists(global.heatwavesurface)
		{
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
		shader_reset();
		}
    }
}
#endregion