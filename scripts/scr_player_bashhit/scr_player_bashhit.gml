mach2 = 0
anger = 100
if (sprite_index == spr_player_bashblow1 && floor(image_index) == (image_number - 3))
{
    sprite_index = spr_player_jugglebash
    vsp = -14
    state = 58
    jumpAnim = 1
    suplexmove = 0
}
if (sprite_index == spr_player_bashblow2 && floor(image_index) == (image_number - 3))
{
    sprite_index = spr_player_jugglebash
    vsp = -15
    state = 58
    jumpAnim = 1
    suplexmove = 0
}
if (sprite_index == spr_player_bashblow3 && floor(image_index) == (image_number - 3))
{
    sprite_index = spr_player_jugglebash
    vsp = -12
    state = 58
    jumpAnim = 1
    suplexmove = 0
}
if (sprite_index == spr_player_bashblow4 && floor(image_index) == (image_number - 3))
{
    sprite_index = spr_player_jugglebash
    vsp = -12
    state = 58
    jumpAnim = 1
    suplexmove = 0
}
if (sprite_index == spr_player_bashblow5 && floor(image_index) == (image_number - 3))
{
    sprite_index = spr_player_jugglebash
    vsp = -10
    state = 58
    jumpAnim = 1
    suplexmove = 0
}
if (sprite_index != spr_player_jugglebash)
{
    vsp = 0
    hsp = 0
    with (obj_camera)
        zoom = 1
}
else
{
    with (obj_camera)
        zoom = 0
}
image_speed = 0.35
