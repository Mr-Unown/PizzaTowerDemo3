#region New Bomb
function scr_player_newbomb() {
	sprite_index = spr_hurt;
	image_speed = 0.4;
	movespeed = clamp(movespeed + 0.25,0,15);
	hsp = lengthdir_x(movespeed,playerdirection);
	vsp = lengthdir_y(movespeed,playerdirection);
	//Hitwall
	if (scr_solid((x + sign(hsp)), y) && !(scr_slope() && !scr_solid(x + sign(hsp),y - 2)) && (!place_meeting((x + sign(hsp)), y, obj_metalblock)) && (!place_meeting((x + sign(hsp)), y, obj_destructibles))) && (playerdirection = 0 || playerdirection = 180) 
	{
		sprite_index = spr_hitwall
		scr_soundeffect(sfx_groundpound)
		scr_soundeffect(sfx_bumpwall)
		with (obj_camera)
	    {
			shake_mag = 20
	        shake_mag_acc = (40 / room_speed)
	    }
	    with (obj_baddie)
	    {
			if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
	        {
				stun = 1
	            alarm[0] = 200
	            ministun = 0
	            vsp = -5
	            hsp = 0
	        }
	    }
	    hsp = 0
	    image_speed = 0.35
	    flash = 0
	    state = 72
	    hsp = -2.5 * xscale
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10 * xscale), (y + 10 ), obj_bumpeffect)
	}
	else if (scr_solid(x, (y + vsp)) && (!place_meeting(x, (y + vsp), obj_destructibles))) && !place_meeting(x, y + vsp, obj_metalblock)
	{
	    a = 0
	    if (sprite_index == spr_player_supersidejump)
	        sprite_index = spr_player_supersidejumpland
	    if (sprite_index == spr_superjump)
	        sprite_index = spr_superjumpland
		with (obj_camera)
	    {
			shake_mag = 20
	        shake_mag_acc = (40 / room_speed)
	    }
	    with (obj_baddie)
	    {
			if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
	        {
				stun = 1
	            alarm[0] = 200
	            ministun = 0
	            vsp = -5
	            hsp = 0
	        }
	    }
	    scr_soundeffect(sfx_groundpound)
	    image_index = 0
	    state = 93
	    machhitAnim = 0
		jetpacking = false	
	    superspringjump = false	
	}
	
}
#endregion