function cutscene_customer_check(argument0, argument1, argument2) // gml_Script_cutscene_customer_check
{
    with (obj_gnome_checklist)
        gnome_check[argument0] = 1
    global.pizzasdelivered++
    if instance_exists(obj_gnomecustomerblock)
        instance_destroy(obj_gnomecustomerblock)
    with (instance_create(argument1.x, argument1.y, obj_pizzaboxunopen))
    {
        content = argument2.content
        depth = argument1.depth
        visible = false
    }
    ds_list_add(global.saveroom, argument2.id)
    cutscene_end_action()
    return;
}
function cutscene_customer_end(argument0, argument1) // gml_Script_cutscene_customer_end
{
    var player = argument0
var _gnomeid = argument1
var finish = 0
with (player)
{
    var depth_obj = other.id
    if (sprite_index == spr_bombpepthrow)
    {
        if (floor(image_index) == 1 && (!instance_exists(obj_pizzacustomer)))
        {
            //global.pizzadelivery = 0 //Makes it so you have to go back to gustavo to deliver the next pizza
            with (instance_create(x, y, obj_pizzacustomer))
            {
                depth = depth_obj.depth
                hsp = (other.xscale * 2.2)
                vsp = -8
            }
        }
        if (image_index > (image_number - 1))
            sprite_index = spr_idle
    }
}
if instance_exists(obj_pizzacustomer)
{
    with (obj_pizzacustomer)
    {
        if grounded
            finish = 1
    }
}
if finish
{
    with (obj_customeractor)
        happy = 1
    with (player)
        state = states.normal
    with (obj_gnome_checklist)
        gnome_check[_gnomeid] = 1
    if instance_exists(obj_gnomecustomerblock)
        instance_destroy(obj_gnomecustomerblock)
    global.pizzasdelivered++
    cutscene_end_action()
}

}