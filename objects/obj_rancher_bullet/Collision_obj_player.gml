if other.state != states.ghost
with (other)
{
    state = states.ghost
	sprite_index = spr_ghostidle
	with (instance_create(x, y, obj_baddie_dead))
	{
		canrotate = true
		image_xscale = other.image_xscale
        sprite_index = other.spr_deathend
		vsp = random_range(-2,-8)
	    hsp = random_range(2,6)
		paletteselect = other.paletteselect
		spr_palette = other.spr_palette	
	}
}

