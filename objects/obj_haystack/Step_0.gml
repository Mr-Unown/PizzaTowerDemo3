with (obj_peasanto)
{
    if (place_meeting((x + hsp), y, other.id) && state == 96 && other.sprite_index != spr_haystackburning && other.sprite_index != spr_haystackburningup)
    {
        other.sprite_index = spr_haystackburningup
        scr_soundeffect(sfx_fireassend)
    }
}
if (place_meeting((x + 1), y, obj_haystack) && sprite_index == spr_haystackburning)
{
    with (instance_place((x + 1), y, obj_haystack))
    {
        if (sprite_index != spr_haystackburningup && sprite_index != spr_haystackburning)
            sprite_index = spr_haystackburningup
    }
}
if (place_meeting((x - 1), y, obj_haystack) && sprite_index == spr_haystackburning)
{
    with (instance_place((x - 1), y, obj_haystack))
    {
        if (sprite_index != spr_haystackburningup && sprite_index != spr_haystackburning)
            sprite_index = spr_haystackburningup
    }
}
if (place_meeting(x, (y + 1), obj_haystack) && sprite_index == spr_haystackburning)
{
    with (instance_place(x, (y + 1), obj_haystack))
    {
        if (sprite_index != spr_haystackburningup && sprite_index != spr_haystackburning)
            sprite_index = spr_haystackburningup
    }
}
if (place_meeting(x, (y - 1), obj_haystack) && sprite_index == spr_haystackburning)
{
    with (instance_place(x, (y - 1), obj_haystack))
    {
        if (sprite_index != spr_haystackburningup && sprite_index != spr_haystackburning)
            sprite_index = spr_haystackburningup
    }
}
if (floor(image_index) == (image_number - 1) && sprite_index == spr_haystackburningup)
    sprite_index = spr_haystackburning
if (sprite_index == spr_haystackburning && obj_player.state != 6 && obj_player.state != 24)
{
    if (obj_player1.character == "V" && place_meeting(x, (y - 1), obj_player1))
        scr_hurtplayer(obj_player1)
    else if (obj_player2.character == "V" && place_meeting(x, (y - 1), obj_player2))
        scr_hurtplayer(obj_player2)
    else
    {
        if (place_meeting(x, (y - 1), obj_player1) && obj_player1.state != 55)
        {
            obj_player1.firebutt += 1
            obj_player1.state = 6
            obj_player1.image_index = 0
            obj_player1.vsp = -25
            obj_player1.sprite_index = obj_player1.spr_fireass
        }
        if (place_meeting(x, (y - 1), obj_player2) && obj_player2.state != 55)
        {
            obj_player2.firebutt += 1
            obj_player2.state = 6
            obj_player2.image_index = 0
            obj_player2.vsp = -25
            obj_player2.sprite_index = obj_player2.spr_fireass
        }
    }
}
with (instance_place(x, (y - 1), obj_player))
{
    if state == 6 && other.sprite_index != spr_haystackburning && other.sprite_index != spr_haystackburningup
    {
        other.sprite_index = spr_haystackburningup
        scr_soundeffect(sfx_fireassend)
    }
}


