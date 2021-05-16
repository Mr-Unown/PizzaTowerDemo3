image_xscale = playerid.xscale
if (playerid.state != states.mach3 && playerid.state != states.jetpack)
    instance_destroy()
x = playerid.x
y = playerid.y
if (playerid.character != "S")
    sprite_index = spr_player_mask
else
    sprite_index = spr_crouchmask


