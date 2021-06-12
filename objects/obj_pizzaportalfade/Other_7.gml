if sprite_index = spr_pizzaportalfade
{
instance_destroy()
}
else if sprite_index == spr_pizzaportaldump
{
	sprite_index = spr_pizzaportalfade
	image_index = 4
}
else
instance_destroy()
