function scr_player_cotton() {
	image_speed = 0.35
	if (dir != xscale)
	{
	    dir = xscale
	    movespeed = 0
	}
	if sprite_index != spr_cotton_attack && sprite_index != spr_cotton_slam
		move = (key_left + key_right)
	    if (move != 0)
	        xscale = move
	    hsp = (move * movespeed)
	    {
	if move != 0
	  movespeed = 5
	else
	  movespeed = 0
	    }
	    movespeed = 4
	    if vsp > 5
	vsp = 5
	if key_jump && grounded
	{
		vsp = -14
		grav = 0.025
		image_index = 0
		sprite_index = spr_cotton_jump
		instance_create(x, y, obj_highjumpcloud2)
		scr_sound(sound_jump)
	}
	if key_slap2 && sprite_index != spr_cotton_attack
	{
		flash = 1
		image_index = 0
		sprite_index = spr_cotton_attack
		grounded = 0
		vsp = -4
		grav = 0.2
		scr_sound(sound_suplex1)
	}
	if sprite_index = spr_cotton_attack
	{
		hsp += 8 * xscale
		movespeed = 0
		instance_create(x, y, obj_swordhitbox)
		move = xscale
	}
	if grounded && sprite_index = spr_cotton_attack
	{
		image_index = 0
		sprite_index = spr_cotton_idle
	}

	if sprite_index = spr_cotton_idle && move != 0
	{
		image_index = 0
		sprite_index = spr_cotton_walk
	}
	if sprite_index = spr_cotton_walk && move == 0
	{
		image_index = 0
		sprite_index = spr_cotton_idle
	}
	if sprite_index = spr_cotton_jump && floor(image_index) == (image_number - 1)
	{
		image_index = 0
		sprite_index = spr_cotton_fall
	}
	if sprite_index = spr_cotton_doublejump && floor(image_index) == (image_number - 1)
	{
		image_index = 0
		sprite_index = spr_cotton_doublefall
	}
	if sprite_index = spr_cotton_slam && floor(image_index) == (image_number - 1)
	{
		image_index = 0
		sprite_index = spr_cotton_idle
		grav = 0.025
	}
	if sprite_index = spr_cotton_slam
		grav = 0.5
	if (sprite_index = spr_cotton_fall || sprite_index = spr_cotton_doublefall) && grounded
	{
		image_index = 0
		sprite_index = spr_cotton_land
		instance_create(x, y, obj_landcloud)
		scr_sound(sound_land)
	}
	if sprite_index = spr_cotton_fall && key_jump
	{
		vsp = -10
		grav = 0.1
		image_index = 0
		sprite_index = spr_cotton_doublejump
		instance_create(x, y, obj_highjumpcloud2)
		scr_sound(sound_jump)
	}
	if sprite_index = spr_cotton_land && (floor(image_index) == (image_number - 1))
		sprite_index = spr_cotton_idle
	if key_down2 && !grounded && drill = 1 && sprite_index != spr_cotton_slam
	{
		vsp = 9
		state = 110
		sprite_index = spr_cotton_drill
		image_index = 0
		scr_sound(sound_suplex1)
		flash = 1
		drill = 0
		with instance_create(x, y, obj_afterimageoutward)
			hspeed = 7
		with instance_create(x, y, obj_afterimageoutward)
			hspeed = -7
		with instance_create(x, y, obj_afterimageoutward)
			vspeed = 7
		with instance_create(x, y, obj_afterimageoutward)
			vspeed = -7
	}

	if !grounded && sprite_index != spr_cotton_jump && sprite_index != spr_cotton_attack && sprite_index != spr_cotton_doublejump && sprite_index != spr_cotton_doublefall && sprite_index != spr_cotton_drill && sprite_index != spr_cotton_slam
		sprite_index = spr_cotton_fall
	
	if grounded && drill == 0
		drill = 1

	if key_attack && !scr_solid(x + (1 * xscale), y) && sprite_index != spr_cotton_slam && grounded
	{
		state = 111
		sprite_index = spr_cotton_run
		image_index = 0
		movespeed = 5
	}


	if sprite_index = spr_cotton_slam
	{
		movespeed = 0
		hsp = 0
		move = 0
		dir = 0
	}
}
