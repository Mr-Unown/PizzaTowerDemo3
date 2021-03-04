if (sprite_index == spr_grabbiehand_release && floor(image_index) == (image_number - 1))
{
	sprite_index = spr_grabbiehand_idle
}
if sprite_index = spr_grabbiehand_idle
{
vspeed = -speedv
speedv += 0.5
}