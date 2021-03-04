if (sprite_index = spr_onoffswitch_bluetored || sprite_index = spr_onoffswitch_redtoblue) && floor(image_index) = image_number - 1
{
	if global.switchblock == 0
	sprite_index = spr_onoffswitch_red
	else
	sprite_index = spr_onoffswitch_blue
}

if sprite_index != spr_onoffswitch_bluetored && sprite_index != spr_onoffswitch_redtoblue
{
	if global.switchblock == 0
	sprite_index = spr_onoffswitch_red
	else
	sprite_index = spr_onoffswitch_blue
}