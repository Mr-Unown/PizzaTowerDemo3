function scr_player_fireass() {
	buttanim = 100
	image_speed = 0.35
	if place_meeting((x + hsp), y, obj_solid)
	    image_xscale *= -1
	if (sprite_index == spr_fireass)
	{
	    if (floor(image_index) == (image_number - 1))
	    {
	        with (instance_create(x, (y + 25), obj_balloonpop))
	            sprite_index = spr_shotgunimpact
	    }
	    move = (key_left + key_right)
	    if (move != 0)
	        xscale = move
	    hsp = (move * movespeed)
	    movespeed = 4
	    if place_meeting(x, (y + 1), obj_haystack)
	    {
	        obj_player1.firebutt += 1
	        scr_soundeffect(44)
	        vsp = -25
	    }
	    else if (grounded && vsp > 0)
	    {
	        scr_soundeffect(51)
	        movespeed = 6
	        sprite_index = spr_fireassground
	        image_index = 0
	    }
	}
	if (sprite_index == spr_fireassground)
	{
	    if (firebutt == 1 || firebutt == 2)
	        firebutt = 0
	    hsp = (xscale * movespeed)
	    if (movespeed > 0)
	        movespeed -= 0.25
	    if (floor(image_index) == (image_number - 1))
	    {
	        movespeed = 0
	        landAnim = 0
	        alarm[5] = 2
	        alarm[7] = 60
	        hurted = 1
	        state = 0
	        sprite_index = spr_idle
	        image_index = 0
	    }
	}
	if (sprite_index == spr_fireassend)
	{
	    if (floor(image_index) == (image_number - 1))
	    {
	        movespeed = 0
	        landAnim = 0
	        alarm[5] = 2
	        alarm[7] = 60
	        hurted = 1
	        state = 0
	        sprite_index = spr_idle
	        image_index = 0
	    }
	}



}
