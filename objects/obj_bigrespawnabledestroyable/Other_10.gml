//Respawnable Destroyable Moment
if destroyed = false
{
	respawnblock = 100;
	destroyed = true
    x = -960;
    y = -100;
    mask_index = spr_null;	
	repeat (3)
	with (instance_create((xstart + 32 + random_range(-32, 32)), (ystart + 32 + random_range(-32, 32)), obj_balloonpop))
	{
		image_speed = 0.35
		sprite_index = spr_destroyablecloud
		image_angle = choose(0,90,180,270)
		vspeed = -3
	}			
    with (instance_create(xstart + 32, ystart + 32, obj_baddie_dead))
	{
		canrotate = true
		image_xscale = other.image_xscale
        sprite_index = other.spr_dead
		hsp = (other.initialhsp * 1.05)
		vsp = clamp(other.initialvsp,other.initialvsp - 32,-4)
	}	
    if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
    {
        audio_stop_sound(sfx_breakblock1)
        audio_stop_sound(sfx_breakblock2)
    }
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
}