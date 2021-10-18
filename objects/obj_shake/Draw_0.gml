if flash
{
	shader_set(shd_hit);
	draw_sprite_ext(sprite_index,image_index,x + random_range(-5, 5),y + random_range(-5, 5),image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	shader_reset();
}
else
	draw_sprite_ext(sprite_index,image_index,x + random_range(-5, 5),y + random_range(-5, 5),image_xscale,image_yscale,image_angle,image_blend,image_alpha);