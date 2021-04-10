if (floor(image_index) == (image_number - 1) && sprite_index == spr_cheeseblock && falling == 1)
{
	image_speed = 0.35;
	sprite_index = spr_cheeseblockdestroyed;
	destroyed = true;
    mask_index = spr_masknull;
    x = -960;
    y = -100;
}
if (destroyed = true)
    reset--
if (reset < 0 && (!place_meeting(x, y, obj_player)))
{
    reset = 100;
    visible = true;
	destroyed = false;
    image_speed = 0.35;
    falling = 0;
    x = xstart;
    y = ystart;
    mask_index = spr_wall;
    sprite_index = spr_cheeseblockreform;
}
if (sprite_index == spr_cheeseblockreform && floor(image_index) == (image_number - 1))
{
    sprite_index = spr_cheeseblock
    image_speed = 0
    image_index = 0
}


