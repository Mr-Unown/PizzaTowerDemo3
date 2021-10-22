//Respawnable Destroyable Moment
if destroyed = false
{
	respawnblock = 100;
	destroyed = true
	x = -960;
    y = -100;
    mask_index = spr_null;
	with (obj_camera)
	{
		shake_mag = 20
		shake_mag_acc = (40 / room_speed)
	}		
	scr_soundeffect(sfx_breakmetal);
	
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
		hsp = (other.initialhsp * 1.5)
		vsp = clamp(other.initialvsp,other.initialvsp - 32,-4)
	}	
}