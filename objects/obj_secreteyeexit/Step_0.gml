if animation_end() && sprite_index = spr_secreteyeexit_spawning
{
	image_index = 0;
	sprite_index = spr_secreteyeexit_idle;
	activated = true;
}
if activated == true
{
	with obj_player
	{
		if actor == true && substate = "secret_in"
		{
			substate = "secret_out"
		}
	}
	idletimer--
	if idletimer <= 0
	{
		image_index = 0;
		sprite_index = spr_secreteyeexit_dissappear;
		activated = false;
	}
}


if animation_end() && sprite_index = spr_secreteyeexit_dissappear
	instance_destroy()