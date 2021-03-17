hsp = 0
vsp = 0
if (floor(image_index) == (image_number - 1))
    state = 0
if (floor(image_index) == 6 && (!instance_exists(obj_swordhitbox)))
{
    scr_soundeffect(34)
    scr_soundeffect(14)
    with (instance_create(x, y, obj_swordhitbox))
        playerid = other.object_index
    with (obj_camera)
        zoom = 1
	obj_camera.alarm[3] = 20
}
if (floor(image_index) == (image_number - 4))
{
    with (obj_camera)
        zoom = 0
}
if (floor(image_index) == 0 && (!instance_exists(obj_swordhitbox)) && sprite_index == spr_swingdingend)
{
    scr_soundeffect(14)
    with (instance_create(x, y, obj_swordhitbox))
        playerid = other.object_index
}
if (sprite_index == spr_charge)
{
    if (sprite_index == spr_swingding)
        sprite_index = spr_swingdingend
    else if (!key_up)
        sprite_index = choose(spr_finishingblow1, spr_finishingblow2, spr_finishingblow3, spr_finishingblow4, spr_finishingblow5)
    else if key_up
        sprite_index = spr_uppercutfinishingblow
    image_index = 0
}
image_speed = 0.35
landAnim = 0
