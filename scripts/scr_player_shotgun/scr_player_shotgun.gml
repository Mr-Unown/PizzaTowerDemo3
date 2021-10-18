function scr_player_shotgun() {
	if (dir != xscale)
	{
	    dir = xscale
	    movespeed = 2
	    facehurt = 0
	}
	move = (key_left + key_right)
	hsp = (move * movespeed)
	if (move != 0)
	{
	    if (movespeed < 6)
	        movespeed += 0.5
	    else if (floor(movespeed) == 6)
	        movespeed = 6
	}
	else
	    movespeed = 0
	if (movespeed > 6)
	    movespeed -= 0.1
	if (sprite_index == spr_shotgunpullout)
	    movespeed = 0
	if (scr_solid((x + sign(hsp)), y) && xscale == 1 && move == 1 && (!scr_slope_ext(x + 1, y)))
	    movespeed = 0
	if (scr_solid((x + sign(hsp)), y) && xscale == -1 && move == -1 && (!scr_slope_ext(x - 1, y)))
	    movespeed = 0
	landAnim = 0
	momemtum = 1
	if (character == "N")
	{
	    var shooting = 0
	    if ((image_index + image_speed) >= image_number)
	        shooting = 1
	    if (shooting == 1)
	    {
	        with (instance_create((x + (xscale * 60)), (y + 30), obj_shotgunbullet))
	        {
	            spdh = random_range(4, -1)
	            playerid = other.id
	        }
	    }
	}
	if (floor(image_index) == (image_number - 1) && character == "P")
	{
	    if grounded
	    {
	        sprite_index = spr_shotgunidle
	        state = 0
	    }
	    else
	    {
	        sprite_index = spr_shotgunfall
	        state = 58
	    }
	}
	if (((!key_shoot) && character == "N" && sprite_index != spr_shotgunpullout) || (sprite_index == spr_shotgunpullout && floor(image_index) == (image_number - 1)))
	{
	    if grounded
	    {
	        sprite_index = spr_shotgunidle
	        state = 0
	    }
	    else
	    {
	        sprite_index = spr_shotgunfall
	        state = 58
	    }
	}
	if key_slap2
	{
	    if (move != 0)
	        xscale = move
	    suplexmove = 1
		suplexdashsnd = audio_play_sound(sfx_suplexdash, 1, false)
		audio_sound_gain(suplexdashsnd, (1 * global.soundeffectsvolume), 0)	
	    state = 22
	    image_index = 0
	    if (shotgunAnim == 1)
	        sprite_index = spr_shotgunsuplexdash
	    else
	        sprite_index = spr_suplexdash
	    if (character == "P")
	        movespeed = 6
	    else
	        movespeed = 4
	}
	shotgunshootbuffer = 0
	image_speed = 0.4
	if ((!instance_exists(obj_slidecloud)) && grounded && movespeed > 4)
	    instance_create(x, y, obj_slidecloud)



}
