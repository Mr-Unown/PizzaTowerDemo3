if (baddie == 0)
{
    if (playerid.state != 51)
        instance_destroy()
}
else if (baddie == 1) && instance_exists(baddieid)
{
    if (baddieid.sprite_index != spr_coolpinea_taunt)
        instance_destroy()
}
else
	instance_destroy()
