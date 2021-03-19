with (obj_player1)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (obj_player1.state == 91 || obj_player1.state == states.jetpack || obj_player1.state == 18))
        instance_destroy(other.id)
}
if (place_meeting(x, (y + 1), obj_player1) || place_meeting(x, (y - 1), obj_player1) || place_meeting((x - 1), y, obj_player1) || place_meeting((x + 1), y, obj_player1))
{
    if (place_meeting(x, (y - 1), obj_player1) && obj_player1.state == 74 && obj_player1.freefallsmash >= 10)
        instance_destroy()
    if (place_meeting(x, (y - 1), obj_player1) && (obj_player1.state == 24 || obj_player1.state == 9))
    {
        instance_destroy()
        tile_layer_delete_at(1, x, y)
    }
}
with (obj_player2)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (obj_player2.state == 91  || obj_player2.state == states.jetpack || obj_player2.state == 18))
        instance_destroy(other.id)
}
if (place_meeting(x, (y + 1), obj_player2) || place_meeting(x, (y - 1), obj_player2) || place_meeting((x - 1), y, obj_player2) || place_meeting((x + 1), y, obj_player2))
{
    if (place_meeting(x, (y - 1), obj_player2) && obj_player2.state == 74 && obj_player2.freefallsmash >= 10)
        instance_destroy()
    if (place_meeting(x, (y - 1), obj_player2) && (obj_player2.state == 24 || obj_player2.state == 9))
    {
        instance_destroy()
        tile_layer_delete_at(1, x, y)
    }
}
if (place_meeting(x, (y + 40), obj_player1) && obj_player1.state == 63 && obj_player1.superspringjump == 1)
    instance_destroy()
if (place_meeting(x, (y + 40), obj_player2) && obj_player2.state == 63 && obj_player2.superspringjump == 1)
    instance_destroy()


