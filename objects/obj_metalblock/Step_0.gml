var player = (global.coop == true ? instance_nearest(x, y, obj_player) : obj_player1)
//Player 1
with (obj_player1)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == states.mach3 || state == states.jetpack || state == states.knightpepslopes || state == states.newbomb))
        with other 	{ initialhsp = 8 * sign(other.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
	if (state = states.knightpepattack || state == states.newbomb)
	{
		if place_meeting(x + hsp, y + vsp, other.id)
        {
			with other 	{ initialhsp = 8 * sign(other.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
        }		
	}
}
if (place_meeting(x, (y + 1), obj_player1) || place_meeting(x, (y - 1), obj_player1) || place_meeting((x - 1), y, obj_player1) || place_meeting((x + 1), y, obj_player1))
{
    if (place_meeting(x, (y - 1), obj_player1) && obj_player1.state == states.freefall && obj_player1.freefallsmash >= 10)
        { initialhsp = 8 * sign(player.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
    if (place_meeting(x, (y - 1), obj_player1) && (obj_player1.state == states.knightpep || obj_player1.state == 9))
		{ initialhsp = 8 * sign(player.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
}
if place_meeting(x, (y + 40), obj_player1) && (obj_player1.state == states.Sjump && (obj_player1.superspringjump == 1 || obj_player1.character = "PZ")) && object_index != obj_metalblockhard
	{ initialhsp = 8 * sign(player.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
//Player 2
with (obj_player2)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == states.mach3 || state == states.jetpack || state == states.knightpepslopes || state == states.newbomb))
        with other 	{ initialhsp = 8 * sign(other.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
	if (state = states.knightpepattack || state == states.newbomb)
	{
		if place_meeting(x + hsp, y + vsp, other.id)
        {
			with other 	{ initialhsp = 8 * sign(other.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
        }		
	}
}
if (place_meeting(x, (y + 1), obj_player2) || place_meeting(x, (y - 1), obj_player2) || place_meeting((x - 1), y, obj_player2) || place_meeting((x + 1), y, obj_player2))
{
    if (place_meeting(x, (y - 1), obj_player2) && obj_player2.state == states.freefall && obj_player2.freefallsmash >= 10)
        { initialhsp = 8 * sign(player.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
    if (place_meeting(x, (y - 1), obj_player2) && (obj_player2.state == states.knightpep || obj_player2.state == 9))
    {
        { initialhsp = 8 * sign(player.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}
    }
}
if place_meeting(x, (y + 40), obj_player2) && (obj_player2.state == states.Sjump && (obj_player2.superspringjump == 1 || obj_player2.character = "PZ")) && object_index != obj_metalblockhard
    { initialhsp = 8 * sign(player.image_xscale); initialvsp = random_range(-4, -1);	event_user(0); 	}


