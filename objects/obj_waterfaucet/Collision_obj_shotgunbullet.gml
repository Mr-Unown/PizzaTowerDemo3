if can_switch = true
{
	if sprite_index = spr_pipe_active
		sprite_index = spr_pipe_deactivate
	else
		sprite_index = spr_pipe_activate
	instance_create(x, y, obj_bangeffect)				
	can_switch = false
	alarm[0] = 50
}

