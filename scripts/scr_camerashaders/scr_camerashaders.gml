function scr_desert_shader()
{
	if object_index != obj_camera
		return;
	shader_set(shd_wave);
	surface_set_target(d3application_surface); //Set the surface
	//Values
	//Wave Effect Options
	wave_shdSpeed = 0.01;
	wave_shdFreq = 100.00;
	wave_shdSize = 0.60;
	#region Shader Stuff
	var uTime = shader_get_uniform(shd_wave, "Time"), 
	uTexel = shader_get_uniform(shd_wave, "Texel"), 
	uSpeed = shader_get_uniform(shd_wave, "xSpeed"),
	uFreq = shader_get_uniform(shd_wave, "xFreq"),
	uSize = shader_get_uniform(shd_wave, "xSize");	
	
	var tex = surface_get_texture(application_surface);

	shader_set_uniform_f(uTime, current_time);
	shader_set_uniform_f(uTexel, texture_get_texel_width(tex), texture_get_texel_height(tex));
	shader_set_uniform_f(uSpeed, wave_shdSpeed);
	shader_set_uniform_f(uFreq, wave_shdFreq);
	shader_set_uniform_f(uSize, wave_shdSize);
	#endregion
	gpu_set_blendenable(false);
	draw_surface(application_surface, 0, 0);
	gpu_set_blendenable(true);
	surface_reset_target();
	shader_reset();
}