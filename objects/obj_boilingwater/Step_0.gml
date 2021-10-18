with (instance_place(x, (y - 1), obj_player))
{
    if (state != 91 && sprite_index != spr_playerN_jetpackslide && state != states.jetpack && sprite_index != spr_mach3boost)
    {
		if character != "V"
		{
			firebutt += 1;
			state = 6;
			image_index = 0;
			vsp = -25;
			sprite_index = spr_fireass;
			scr_soundeffect(sfx_scream5);
		}
		else
			scr_hurtplayer(id);
    }
	else if state = 91 || (grounded && state = states.jetpack) || sprite_index = spr_playerN_jetpackslide
	{
	    repeat (5)
        {
            with (instance_create(((x - (xscale * 30)) + random_range(-5, 5)), ((y + 40) + random_range(-5, 5)), obj_slimedebris))
            {
                sprite_index = spr_waterdrop;
                image_alpha = 0.392;
            }
        }
	}
}
with (instance_place(x, (y - 1), obj_baddie))
    instance_destroy()
	



