x = playerid.x
y = playerid.y
with (playerid)
{
    if sprite_index != spr_swingding
        instance_destroy(other.id)
}

