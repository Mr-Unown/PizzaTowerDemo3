function cutscene_customer_start(argument0) // gml_Script_cutscene_customer_start
{
var player = argument0
with (player)
{
    hsp = 0
    state = states.cutsceneactor
    var customerdoor = instance_nearest(x, y, obj_gnomecustomer)
    if (customerdoor.x != x)
        xscale = (-sign((x - customerdoor.x)))
}
        cutscene_end_action()
    return;
}

