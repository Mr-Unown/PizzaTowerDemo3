if state = 15
{
	bombpeptimer = 100
    state = 20
    image_index = 0
    sprite_index = spr_bombpep_intro
	with instance_nearest(x, y, obj_bomb)
{
	instance_deactivate_object(obj_bomb)
}
}