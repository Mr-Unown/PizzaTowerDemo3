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
		hsp = random_range(4,-4)
		vsp = random_range(-2,-8)
	}
}

