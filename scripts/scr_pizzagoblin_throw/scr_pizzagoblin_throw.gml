function scr_pizzagoblin_throw() {
	/*
	if (!variable_global_exists("throw_frame"))
	{
	    //global.throw_frame = 0
	    //global.throw_frame[53] = 2
	   // global.throw_frame[51] = 6
	   // global.throw_frame[58] = 2
	    global.throw_frame[59] = 6
	    //global.throw_frame[60] = 2
	    //global.throw_frame[52] = 2
	   /* global.spr_throw = spr_plug
	    global.spr_throw[53] = spr_pizzagoblin_throwbomb
	    global.spr_throw[51] = spr_cheeserobot_attack
	    global.spr_throw[58] = spr_spitcheese_spit*/
	    global.spr_throw[59] = spr_gumball_throw
	    //global.spr_throw[60] = spr_invtrash_throw
	   // global.spr_throw[52] = spr_robot_attack
	   // global.reset_timer = 0
	   // global.reset_timer[53] = 200
	  //  global.reset_timer[51] = 200
	  //global.reset_timer[59] = 500
	  //  global.reset_timer[60] = 100
	  //  global.reset_timer[52] = 200
	  //  global.reset_timer[58] = 100
	//}
	/*
	hsp = 0
	if place_meeting(x, (y + 1), obj_railh)
	    hsp = -5
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = 5
	if (bombreset == 0 && floor(image_index) == global.throw_frame[object_index])
	{
	    bombreset = global.reset_timer[object_index]
	    sprite_index = global.spr_throw[object_index]
	    switch object_index
	    {
	        /*case obj_pizzagoblin:
	            with (instance_create(x, y, obj_bomb))
	                hsp = (other.image_xscale * 8)
	            break
	        case 51:
	            with (instance_create(x, y, obj_cheeseblob))
	            {
	                sprite_index = spr_cheeserobot_goop
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 8)
	                vsp = 0
	                grav = 0
	            }
	            break
	        case 58:
	            with (instance_create((x + (image_xscale * 6)), (y - 6), obj_spitcheesespike))
	            {
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 5)
	                vsp = -6
	            }
	            break*/
	       // case obj_gumballmachine:
	      /*case obj_gumballmachine:
			bombreset = 100
	            with (instance_create((x + (image_xscale * 6)), (y - 6), obj_gumball))
	            {
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 5)
	                vsp = -4
	            }
	            break
	        /*case 52:
	            with (instance_create(x, y, obj_robotknife))
	            {
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 5)
	            }
	            break*/
	 // }

	//}
	/*
	*/
	if (floor(image_index) == (image_number - 1) && grounded)
	{
	    state = 86
	    image_index = 0
	}
	if ((!grounded) && hsp < 0)
	    hsp += 0.1
	else if ((!grounded) && hsp > 0)
	    hsp -= 0.1
		sprite_index = spr_throw
		hsp = 0
		if place_meeting(x, (y + 1), obj_railh)
		    hsp = -5
		else if place_meeting(x, (y + 1), obj_railh2)
		    hsp = 5
		if (floor(image_index) == (image_number - 1))
		{
			sprite_index = walkspr
			image_index = 0
		    state = 100
		}
		if ((bombreset == 0) && (floor(image_index) == throw_frame))
		{
		    bombreset = 100
		    sprite_index = spr_throw
		    switch object_index
		    {
			case obj_gumballmachine:
			bombreset = 500
			        if (!audio_is_playing(sound_enemythrow))
	            scr_sound(sound_enemythrow)
	            with (instance_create((x + (image_xscale * 6)), (y - 6), obj_gumball))
	            {
	                image_xscale = other.image_xscale
	                hsp = (other.image_xscale * 5)
	                vsp = -4
	            }
				break
				case obj_cottonwitch:
			bombreset = 400
			        if (!audio_is_playing(sound_enemythrow))
	            scr_sound(sound_enemythrow)
	            with (instance_create(x, y, obj_cottonwitchprojectile))
	                image_xscale = other.image_xscale
	            break	
				case obj_rudejanitor:
			bombreset = 100
			        if (!audio_is_playing(sound_enemythrow))
	            scr_sound(sound_enemythrow)
	            with (instance_create(x, y, obj_puddle))
	                image_xscale = other.image_xscale
	            break	
				case obj_crackerkicker:
			        if ((bombreset == 0) && (floor(image_index) == throw_frame))
					{
					if (!audio_is_playing(sound_enemythrow))
	            scr_sound(sound_enemythrow)
	            instance_create(x, y, obj_crackerkicker_kickhitbox)
				with (instance_create(x, y, obj_crackerkicker_kickhitbox))
	            {
	                baddieID = other.id
	                image_xscale = other.image_xscale
	            }
					}
				bombreset = 100
	            break	
			}
		}
	//this will cause a memory leak later. Too Bad!


}
