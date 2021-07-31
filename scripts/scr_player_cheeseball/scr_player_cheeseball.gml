var size = random_range(0.6, 1.2)
hsp = (xscale * 12)
if ((!scr_slope()) && instance_place((x + sign(hsp)), y, obj_solid))
{
    scr_soundeffect(16)
    scr_soundeffect(17)
    grav = 0.5
    repeat (8)
    {
        with (instance_create((other.x + random_range(-5, 5)), (other.y + random_range(-5, 5)), obj_slimedebris))
        {
            image_xscale = size
            image_yscale = image_xscale
        }
    }
    if (x != other.x)
        hsp = (sign((x - other.x)) * 5)
    else
        hsp = 5
    vsp = -3
    visible = true
    image_index = 0
    image_index = 0
    flash = 1
    state = 72
}
if instance_place(x, y, obj_water)
{
    scr_soundeffect(17)
    grav = 0.5
    repeat (8)
    {
        with (instance_create((other.x + random_range(-5, 5)), (other.y + random_range(-5, 5)), obj_slimedebris))
        {
            image_xscale = size
            image_yscale = image_xscale
        }
    }
    if (x != other.x)
        hsp = (sign((x - other.x)) * 5)
    else
        hsp = 5
    vsp = -3
    visible = true
    image_index = 0
    image_index = 0
    flash = 1
    state = 72
}
sprite_index = spr_player_cheeseball
if key_jump
    input_buffer_jump = 0
if (input_buffer_jump < 8 && grounded)
{
    instance_create(x, y, obj_highjumpcloud2)
    scr_soundeffect(sfx_jump)
    vsp = -5
}
