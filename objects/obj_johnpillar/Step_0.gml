if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && sprite_index != spr_hungrypillar_angry)
{
    idle = 0
    image_speed = 0.35
    sprite_index = spr_hungrypillar_angry
}
else if ((!(obj_player.x > (x - 400) && obj_player.x < (x + 400))) && sprite_index == spr_hungrypillar_angry)
{
    idle = 0
    image_speed = 0.35
    sprite_index = spr_hungrypillar_happy
    alarm[0] = 100
}
else if ((!(obj_player.x > (x - 400) && obj_player.x < (x + 400))) && sprite_index != spr_hungrypillar_angry && sprite_index != spr_hungrypillar_happy)
{
    if (idle < 400)
        idle++
    if (idle >= 200 && floor(image_index) == (image_number - 1) && sprite_index != spr_hungrypillar)
    {
        sprite_index = spr_hungrypillar
        idle = 0
        image_index = 0
        image_speed = 0
    }
    if (idle >= 200 && sprite_index != spr_hungrypillar_blink && sprite_index != spr_hungrypillar_mouth)
    {
        var idleanim = random_range(0, 100)
        if (idleanim <= 70)
        {
            image_index = 0
            image_speed = 0.35
            sprite_index = spr_hungrypillar_blink
        }
        if (idleanim > 70)
        {
            image_index = 0
            image_speed = 0.2
            sprite_index = spr_hungrypillar_mouth
        }
        image_index = 0
    }
}


