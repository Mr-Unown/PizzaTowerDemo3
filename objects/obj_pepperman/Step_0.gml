if (sprite_index == spr_pepperman_charge)
{
    if (obj_player.x > x)
        x += (spd - 0.5)
    else if (obj_player.state == 4)
    {
        playerbehind = 1
        sprite_index = spr_pepperman
        image_index = 8
        if (floor(image_index) == (image_number - 1))
        {
            image_index = 0
            playerbehind = 0
            sprite_index = spr_pepperman_charge
        }
    }
    else
    {
        playerbehind = 1
        sprite_index = spr_pepperman
    }
}
if (sprite_index == spr_pepperman_charge && obj_player.movespeed > 5)
    spd = floor(obj_player.movespeed)
else
    spd = 5
if (obj_player1.state != 61 && screamintro == 0)
{
    with (obj_player1)
    {
        xscale = -1
        image_index = 0
        state = 51
        sprite_index = spr_bossintro
        scr_soundeffect(sfx_scream5)
    }
    with (obj_player2)
    {
        xscale = -1
        image_index = 0
        state = 51
        sprite_index = spr_bossintro
    }
    screamintro = 1
}
if (playerbehind != 1)
{
    if (!audio_is_playing(sfx_scream5))
    {
        if (obj_player1.state != 51 && screamintro == 1 && sprite_index != spr_pepperman_charge && dead == 0)
        {
            instance_create(x, y, obj_peppermancharge)
            sprite_index = spr_pepperman_charge
        }
    }
}
if (dead == 1)
{
    if (vsp < 12)
        vsp += grav
    image_speed = 0
    x += hsp
    y += floor(vsp)
}
if (sprite_index == spr_pepperman_hurt && floor(image_index) == (image_number - 1))
    sprite_index = spr_pepperman_stun


