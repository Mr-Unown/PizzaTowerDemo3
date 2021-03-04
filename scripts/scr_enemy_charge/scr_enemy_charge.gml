if (object_index == obj_peasanto)
{
    if (grounded || (grounded && (!place_meeting(x, y, obj_platform))))
        hsp = (image_xscale * (movespeed * 4))
    else
        hsp = 0
    image_speed = 0.35
    if (((scr_solid((x + 1), y) && image_xscale == 1) || (scr_solid((x - 1), y) && image_xscale == -1)) && (!place_meeting((x + sign(hsp)), y, obj_slope)))
        image_xscale *= -1
    if ((!(scr_solid((x + 15), (y + 31)) || scr_solid((x + 15), (y + 31)))) && image_xscale == 1 && movespeed > 0)
        image_xscale *= -1
    if ((!(scr_solid((x - 15), (y + 31)) || scr_solid((x - 15), (y + 31)))) && image_xscale == -1 && movespeed > 0)
        image_xscale *= -1
    if ((!(grounded || (grounded && (!place_meeting(x, y, obj_platform))))) && hsp < 0)
        hsp += 0.1
    else if ((!(grounded || (grounded && (!place_meeting(x, y, obj_platform))))) && hsp > 0)
        hsp -= 0.1
    sprite_index = spr_peasanto_attack
}
if (object_index == obj_pizzice)
{
    hsp = (image_xscale * movespeed)
    image_speed = 0.35
    if (((scr_solid((x + 1), y) && image_xscale == 1) || (scr_solid((x - 1), y) && image_xscale == -1)) && (!place_meeting((x + sign(hsp)), y, obj_slope)))
        image_xscale *= -1
    sprite_index = spr_pizzice_walk
}
if (object_index == obj_fencer)
{
    if (grounded || (grounded && (!place_meeting(x, y, obj_platform))))
        hsp = (image_xscale * movespeed)
    else
        hsp = 0
    if (((scr_solid((x + 1), y) && image_xscale == 1) || (scr_solid((x - 1), y) && image_xscale == -1)) && (!place_meeting((x + sign(hsp)), y, obj_slope)))
        image_xscale *= -1
}
if (object_index == obj_minijohn || object_index == obj_piraneapple)
{
    var targetplayer = obj_player1
    if (obj_player1.spotlight == 0)
        targetplayer = obj_player2
    var playerposition = (x - targetplayer.x)
    if (x != targetplayer.x && image_xscale != (-sign(playerposition)))
    {
        if (object_index == obj_piraneapple)
            movespeed = 9
        else
            movespeed = 7
        image_xscale = (-sign(playerposition))
        slide = ((-image_xscale) * (movespeed + 4))
    }
    if (slide <= 0)
        slide += 0.1
    else if (slide > 0)
        slide -= 0.1
    hsp = ((image_xscale * movespeed) + slide)
    if (((scr_solid((x + 1), y) && image_xscale == 1) || (scr_solid((x - 1), y) && image_xscale == -1)) && (!place_meeting((x + sign(hsp)), y, obj_slope)))
    {
        image_xscale *= -1
        if (object_index != obj_piraneapple)
            vsp = -3
        else
            slide /= 2
    }
}
if object_index = obj_shrimp || object_index = obj_shrimpred || object_index = obj_shrimpblue
{
    var targetplayer = obj_player1
    if (obj_player1.spotlight == 0)
        targetplayer = obj_player2
    var playerposition = (x - targetplayer.x)
    if (x != targetplayer.x && image_xscale != (-sign(playerposition)))
    {
        movespeed = 7
        image_xscale = (-sign(playerposition))
		slide = ((-image_xscale) * (movespeed + 4))
	}
	if (slide <= 0)
        slide += 0.1
    else if (slide > 0)
        slide -= 0.1
    hsp = (image_xscale * movespeed) + slide
}
if (object_index == obj_ancho)
{
    hsp = (image_xscale * movespeed)
    if place_meeting((x + hsp), y, obj_solid)
    {
        state = 106
        stunned = 100
    }
}
if (object_index == obj_ninja)
{
    hsp = (image_xscale * (movespeed * 2))
    image_speed = 0.35
    if (grounded && vsp > 0)
        state = 102
    if (((scr_solid((x + 1), y) && image_xscale == 1) || (scr_solid((x - 1), y) && image_xscale == -1)) && (!place_meeting((x + sign(hsp)), y, obj_slope)))
        image_xscale *= -1
    if ((!(grounded || (grounded && (!place_meeting(x, y, obj_platform))))) && hsp < 0)
        hsp += 0.1
    else if ((!(grounded || (grounded && (!place_meeting(x, y, obj_platform))))) && hsp > 0)
        hsp -= 0.1
    sprite_index = spr_ninja_attack
}
