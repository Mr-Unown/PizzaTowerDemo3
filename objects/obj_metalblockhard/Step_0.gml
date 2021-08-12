//Player 1
with (obj_player1)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == states.knightpepslopes))
        instance_destroy(other.id)
	if (state = states.knightpepattack)
	{
		if place_meeting(x + hsp, y + vsp, other.id)
        {
			instance_destroy(other.id);
        }		
	}
}
if (place_meeting(x, (y + 1), obj_player1) || place_meeting(x, (y - 1), obj_player1) || place_meeting((x - 1), y, obj_player1) || place_meeting((x + 1), y, obj_player1))
{
    if (place_meeting(x, (y - 1), obj_player1) && obj_player1.state == states.freefall && obj_player1.freefallsmash >= 10)
        instance_destroy()
    if (place_meeting(x, (y - 1), obj_player1) && (obj_player1.state == states.knightpep || obj_player1.state == 9))
    {
        instance_destroy()
    }
}
if place_meeting(x, (y + 40), obj_player1) && (obj_player1.state == states.Sjump && (obj_player1.superspringjump == 1 || obj_player1.character = "PZ")) && object_index != obj_metalblockhard
    instance_destroy()
//Player 2
with (obj_player2)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == states.knightpepslopes))
        instance_destroy(other.id)
	if (state = states.knightpepattack)
	{
		if place_meeting(x + hsp, y + vsp, other.id)
        {
			instance_destroy(other.id);
        }		
	}
}
if (place_meeting(x, (y + 1), obj_player2) || place_meeting(x, (y - 1), obj_player2) || place_meeting((x - 1), y, obj_player2) || place_meeting((x + 1), y, obj_player2))
{
    if (place_meeting(x, (y - 1), obj_player2) && obj_player2.state == states.freefall && obj_player2.freefallsmash >= 10)
        instance_destroy()
    if (place_meeting(x, (y - 1), obj_player2) && (obj_player2.state == states.knightpep || obj_player2.state == 9))
    {
        instance_destroy()
    }
}
if place_meeting(x, (y + 40), obj_player2) && (obj_player2.state == states.Sjump && (obj_player2.superspringjump == 1 || obj_player2.character = "PZ")) && object_index != obj_metalblockhard
    instance_destroy()


