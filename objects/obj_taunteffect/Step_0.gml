if (baddie == 0)
{
    if (playerid.state != 51 && playerid.state != states.trick && playerid.state != states.frozen)
        instance_destroy()
}
else if (baddie == 1) && instance_exists(baddieid)
{
    if (baddieid.sprite_index != spr_coolpinea_taunt)
        instance_destroy()
}
else
	instance_destroy()
if global.freezeframe = true
	image_speed = 0
else
	image_speed = 0.5