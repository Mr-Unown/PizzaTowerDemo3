//Player 1
with (obj_player1)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == states.knightpepslopes || state == states.newbomb || state == states.rocket))
		with other 	{ initialhsp = 8 * sign(other.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
	if (state = states.knightpepattack || state == states.newbomb || state == states.rocket)
	{
		if place_meeting(x + hsp, y + vsp, other.id)
        {
			with other 	{ initialhsp = 8 * sign(other.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
        }	
		if place_meeting(x + sign(hsp), y + sign(vsp), other.id)
        {
			with other 	{ initialhsp = 8 * sign(other.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
        }			
	}
	if (state = states.rocket && rocketup == 1 && place_meeting(x, (y - vsp), other.id))
		with other 	{ initialhsp = 8 * sign(other.image_yscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
}
if (place_meeting(x, (y + 1), obj_player1) || place_meeting(x, (y - 1), obj_player1) || place_meeting((x - 1), y, obj_player1) || place_meeting((x + 1), y, obj_player1))
{
    if (place_meeting(x, (y - 1), obj_player1) && (obj_player1.state == states.knightpep || obj_player1.state == 9))
        	{ initialhsp = 8 * sign(other.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
}
//Player 2
with (obj_player2)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == states.knightpepslopes || state == states.newbomb))
        with other 	{ initialhsp = 8 * sign(other.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
	if (state = states.knightpepattack || state == states.newbomb)
	{
		if place_meeting(x + hsp, y + vsp, other.id)
        {
			with other 	{ initialhsp = 8 * sign(other.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
        }	
		if place_meeting(x + sign(hsp), y + sign(vsp), other.id)
        {
			with other 	{ initialhsp = 8 * sign(other.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
        }		
	}
}
if (place_meeting(x, (y + 1), obj_player2) || place_meeting(x, (y - 1), obj_player2) || place_meeting((x - 1), y, obj_player2) || place_meeting((x + 1), y, obj_player2))
{
    if (place_meeting(x, (y - 1), obj_player2) && (obj_player2.state == states.knightpep || obj_player2.state == 9))
		{ initialhsp = 8 * sign(other.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
}
if global.ratmode = true
instance_destroy()
