image_xscale = playerid.xscale
if (playerid.state == 33)
{
    x = playerid.x
    y = playerid.y
}
if (playerid.state == 29)
{
    x = (playerid.x + ((-playerid.image_xscale) * 20))
    y = (playerid.y + 30)
}
if (playerid.state != 33 && playerid.state != 29)
    instance_destroy()
image_speed = 0.35


