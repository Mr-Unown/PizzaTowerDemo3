if (floor(image_index) == (image_number - 1) && sprite_index == spr_pizzaportalentrancestart)
{
    with (instance_create(x, y, obj_pizzaportalfade))
        image_index = 4
    grav = 0.5
    vsp += 14
    state = 74
    if (shotgunAnim == 0)
        sprite_index = spr_bodyslamfall
    else
        sprite_index = spr_shotgunjump3
}
else
{
    hsp = 0
    vsp = 0
    grav = 0
}
global.pausecombotime = true
obj_tv.alarm[1] = 75	
mach2 = 0
