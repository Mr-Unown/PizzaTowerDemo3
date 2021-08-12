with (instance_create(x, y,  obj_baddie_dead))
{
	canrotate = true
	vsp = irandom_range(-5, -15)
	hsp = choose(1,-1) * irandom_range(5, 15)
    scr_soundeffect(11)
    sprite_index = other.sprite_index
    image_xscale = other.image_xscale
}
instance_destroy()


