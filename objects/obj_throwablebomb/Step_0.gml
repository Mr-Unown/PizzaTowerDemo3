/// @description additional kaboom code

// Inherit the parent event
event_inherited();
if place_meeting((x + hsp), (y - vsp), obj_metalblockhard) || place_meeting((x + hsp), (y - vsp), obj_smallratblock)
{
	instance_destroy()
	instance_create(x, y, obj_bombexplosion)
}
if place_meeting((x + hsp), (y - vsp), obj_bombblock)
{
	instance_destroy()
	instance_create(x, y, obj_bombexplosion)
}

