//Get Out
if (player.key_slap2 || keyboard_check_pressed(vk_return)) && has_selectedoption = false
{
	with player
	{
		state = states.comingoutdoor;
		sprite_index = spr_walkfront;
	    image_index = 0;
		blackblend = 0;
		image_blend = make_colour_hsv(0, 0, 0);
		visible = true;
	}
	instance_destroy();
}
