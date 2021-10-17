scr_commonenemy()
scr_scareenemy()
if (state == 106 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (hitboxcreate == 0 && (state == 94 || state == 102))
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_coolpinea_hitbox))
    {
        ID = other.id
        sprite_index = spr_coolpinea_taunt
		mask_index = spr_player_mask
    }
}
if (state != 109)
    depth = 0
if (state != 106)
    thrown = 0
tauntreset = approach(tauntreset,0, 1 + (global.heatmeter*0.25)  )
//taunt
if (state != 94 && state == 102) && tauntreset <= 0
{
    if point_in_rectangle(x, y, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))
    {
        if audio_is_playing(sfx_taunt)
            audio_stop_sound(sfx_taunt)
        scr_soundeffect(sfx_taunt)
    }
    image_index = random_range(0, sprite_get_number(spr_coolpinea_taunt))
    sprite_index = spr_coolpinea_taunt
    if (!instance_exists(taunteffect))
    {
        with (instance_create(x, y, obj_taunteffect))
        {
            depth = 0.5
            other.taunteffect = id
            baddie = 1
            baddieid = other.id
        }
    }
	taunttimer = 20
    state = 94
    tauntreset = 100
    vsp = 0
    if (parrying == 0)
        hsp = 0
}




if (parrying == 1)
{
    var targetxscaleposition = (x - hurtedplayeridx)
    image_xscale = (-sign(targetxscaleposition))
    sprite_index = spr_coolpinea_parry
    parrymovespeed = 8
    scr_soundeffect(sfx_spin)
    if ((!instance_exists(taunteffect)) && instance_exists(id))
    {
        with (instance_create(x, y, obj_taunteffect))
        {
            depth = 0.5
            other.taunteffect = id
            baddie = 1
            baddieid = other.id
        }
    }
    parrying = 0
    if (!alarm[6])
        alarm[6] = 10
}
else if (sprite_index == spr_coolpinea_parry)
{
    hsp = ((-image_xscale) * parrymovespeed)
    if (parrymovespeed > 0)
        parrymovespeed -= 0.5
    else
        parrymovespeed = 0
    if (floor(image_index) == (image_number - 1))
    {
        hsp = 0
        parrymovespeed = 0
        sprite_index = spr_coolpinea
        state = 102
    }
}
if (state == 94 && sprite_index == spr_coolpinea_taunt && taunttimer <= 0)
{
    grav = 0.5
    state = 102
}
else if (state == 94 && sprite_index == spr_coolpinea_taunt && taunttimer > 0)
{
    vsp = 0
    hsp = 0
}
if (boundbox == 0 && sprite_index != spr_coolpinea_taunt)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.mask_index
        baddieID = other.id
        other.boundbox = 1
        other.box_id = id
    }
}
if (sprite_index == spr_coolpinea_taunt)
{
    instance_destroy(box_id)
    boundbox = 0
}


