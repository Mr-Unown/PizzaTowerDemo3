with (obj_baddie)
{
    if (place_meeting((x + hsp), y + vsp, obj_enemyblock) && thrown == 1)
        instance_destroy(instance_place((x + hsp), y + vsp, obj_enemyblock))
}
with (obj_throwableparent)
{
    if (place_meeting((x + hsp), y + vsp, obj_enemyblock) && thrown == 1)
        instance_destroy(instance_place((x + hsp), y + vsp, obj_enemyblock))
}
with (obj_pizzaball)
{
    if (place_meeting((x + hsp), y + vsp, obj_enemyblock) && thrown == 1)
        instance_destroy(instance_place((x + hsp), y + vsp, obj_enemyblock))
}
var player = instance_nearest(x,y,obj_player)
if (player.character == "V")
{
    with (player)
    {
        if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (player.state == 91 || player.state == 18))
            instance_destroy(other.id)
    }
    if (place_meeting(x, (y + 1), player) || place_meeting(x, (y - 1), player) || place_meeting((x - 1), y, player) || place_meeting((x + 1), y, player))
    {
        if (place_meeting(x, (y - 1), player) && player.state == 74 && player.freefallsmash >= 10)
            instance_destroy()
        if (place_meeting(x, (y - 1), player) && (player.state == 24 || player.state == 9))
        {
            instance_destroy()
            tile_layer_delete_at(1, x, y)
        }
    }
    if (place_meeting(x, (y + 40), player) && player.state == 63 && global.superspringjump == 1)
        instance_destroy()
}


