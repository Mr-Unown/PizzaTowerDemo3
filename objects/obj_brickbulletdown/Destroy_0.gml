with (instance_create(x, y, obj_baddie_dead))
	{
		canrotate = true
		image_xscale = other.image_xscale
        sprite_index = spr_brickdead
		vsp = irandom_range(4, -10)
		hsp = -image_xscale * irandom_range(10, 16)
		rotatedirection = choose(-1,1)
		rotatevalue = irandom_range(5,20)		
		
	}
with (obj_camera)
    {
        shake_mag = 3
        shake_mag_acc = (3 / room_speed)
    }