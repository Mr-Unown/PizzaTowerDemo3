depth = 5
if (image_yscale == 1)
{
    if (place_meeting(x, (y + 1), obj_ladder) && (!place_meeting(x, (y - 1), obj_ladder)))
        sprite_index = spr_ladder_top
    if (place_meeting(x, (y - 1), obj_ladder) && (!place_meeting(x, (y + 1), obj_ladder)))
        sprite_index = spr_ladder_bottom
    if (place_meeting(x, (y + 1), obj_ladder) && place_meeting(x, (y - 1), obj_ladder))
        sprite_index = spr_ladder
}


