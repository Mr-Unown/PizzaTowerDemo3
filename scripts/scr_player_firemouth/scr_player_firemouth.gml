function scr_player_firemouth() {
	//Firemouth Movespeed funnies
	static add_to = 0;
	//show_debug_message(string(add_to));
	//Rail Shit
	var rail = 0;
	if grounded 
		rail = ( place_meeting(x,y+1,obj_railh) ? -5 : (place_meeting(x,y+1,obj_railh2) ? 5 : 0) )	
	else
		rail = 0;
	//Move
	move = (key_left + key_right)
	
	if key_jump
		input_buffer_jump = 0
		
	mach2 = 0
	landAnim = 0
	alarm[5] = 2
	hurted = 0
	if sprite_index == spr_firemouthend
	{
		if animation_end()
		{
			alarm[5] = 2
			alarm[7] = 60
			hurted = 1
			state = states.normal
			sprite_index = spr_idle
			image_index = 0
		}
		 add_to = 0;
		 movespeed = 0;
		 hsp = 0;
		 vsp = 10;
	}
	if sprite_index == spr_firemouthintro 
	{
		if animation_end()
			sprite_index = spr_player_firemouthidle	
		image_speed = 0.35			
		global.pausecombotime = true
		obj_tv.alarm[1] = 75;
	}
	if (sprite_index != spr_firemouthintro && sprite_index != spr_firemouthend)
	{
		if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
		{
		    vsp /= 2
		    jumpstop = 1
		}
		if (grounded && vsp > 0)
		    jumpstop = 0
		if (move != 0)
		{
		    if (movespeed < 12)
		        movespeed += 0.2

		    if (xscale != move)
			{
				add_to = 0
				xscale = move 
				movespeed = 0
			}			
			hsp = (move * (movespeed + add_to)) + rail
			if grounded
				sprite_index = spr_firemouth
		}
		else if (grounded)
		{
		    hsp = rail
		    movespeed = 0
			sprite_index = spr_player_firemouthidle
		}
		//Firemouth DASH
		if (key_slap2 && sprite_index != spr_player_firemouthdash && !grounded)
		{
		    image_index = 0
		    sprite_index = spr_player_firemouthdash
			add_to += 3
		}
		if (sprite_index == spr_player_firemouthdash)
		{
			if(movespeed < 12)
				movespeed += 0.2
			vsp = 0
			hsp = (xscale * (movespeed + add_to)) + rail
		}
		if sprite_index != spr_player_firemouthdash && (grounded) && add_to > 0 
			add_to -= 0.5
		if sprite_index == spr_player_firemouthdash && animation_end()
		{
		    sprite_index = spr_player_firemouthidle
		    image_index = 0
		}
		if(sprite_index = spr_player_firemouthjump && grounded)
			sprite_index = spr_player_firemouthidle
		if(!grounded && sprite_index != spr_player_firemouthdash)
			sprite_index = spr_player_firemouthjump
		if scr_solid(x + xscale,y) && !scr_slope_ext(x + xscale,y) && sprite_index == spr_player_firemouthdash
		{
			add_to = 0;
		    sprite_index = spr_player_firemouthidle
		    image_index = 0			
		}
/*		if (scr_solid((x + 1), y) && xscale == 1 && hsp != 0 && (!scr_slope_ext(x + sign(hsp), y)) && sprite_index != spr_firemouthshoot)
		{
		    instance_create((x + 10), (y + 10), obj_bumpeffect)
		    xscale *= -1
		    movespeed /= 2
		}
		if (scr_solid((x - 1), y) && xscale == -1 && hsp != 0 && (!scr_slope_ext(x + sign(hsp), y)) && sprite_index != spr_firemouthshoot)
		{
		    instance_create((x - 10), (y + 10), obj_bumpeffect)
		    xscale *= -1
		    movespeed /= 2
		}*/
		if (input_buffer_jump < 8 && grounded)
		{
		    vsp = -14
			sprite_index = spr_player_firemouthjump
			with(instance_create(x, y - 23, obj_jumpdust))
				sprite_index = spr_firemouthjumpeffect
		}
		if sprite_index == spr_player_firemouthjump
		{
			image_speed = clamp((abs(vsp/3) * 0.6),0.1,0.6) * -sign(vsp)
		}
		else if (sprite_index == spr_firemouth)
		{
		    if (movespeed < 4)
		        image_speed = 0.35
		    else if (movespeed > 4 && movespeed < 8)
		        image_speed = 0.45
		    else
		        image_speed = 0.6
		}
		else
		    image_speed = 0.35
		if (hsp != 0 && (floor(image_index) == 0 || floor(image_index) == 2) && steppy == 0 && grounded)
		    steppy = 1
		if (floor(image_index) != 0 && floor(image_index) != 2)
		    steppy = 0
		if ((!instance_exists(obj_dashcloud)) && grounded && hsp != 0)
		{
		    with (instance_create(x, y, obj_dashcloud))
		        image_xscale = other.xscale
	}
}



}
