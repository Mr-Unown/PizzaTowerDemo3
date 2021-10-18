image_xscale = playerid.xscale
x = playerid.x
y = playerid.y
if global.freezeframe = false
{
if (playerid.state != states.frozen && playerid.state != 25 && playerid.state != 3)
    instance_destroy()
}


