if (obj_player.key_right2 && i < sprite_get_number(spr_manual) - 1)
{
    i += 1
    scr_soundeffect(sfx_step)
}
if ((-obj_player.key_left2) && i > 0)
{
    i -= 1
    scr_soundeffect(sfx_step)
}
if (obj_player.key_slap2 || keyboard_check_pressed(vk_f5) || obj_player.key_start)
{
    instance_destroy()

    if (room == New_Realtitlescreen)
	{
        obj_player1.state = states.normal;
		if global.coop == true
			obj_player2.state = states.normal;
		obj_newmainmenuselect.selected = 0
	}
	else if room == Realtitlescreen
	{
		obj_mainmenuselect.selected = 0
	}
}

//Credits Scroll
if i >= sprite_get_number(spr_manual) - 1
{
	var height = string_height(credits_text) - 5;	
	var scroll = mouse_wheel_down() - mouse_wheel_up();
	//Set Font
	draw_set_font(global.smallfont)
	draw_set_halign(fa_center)	
	//Scroll Wheel Shit
	if scroll != 0
	{
		autoscroll = false
		alarm[0] = 30;
	}
	credits_y += (3 * scroll)
	
	if autoscroll = true
		credits_y -= 0.75
	//Damn Daniel
	/*
	if credits_y < height
		credits_y = surface_height + 5
	if credits_y > surface_height + 5
		credits_y = height
	*/
	var maximum = surface_height + 5, minimum = height;
	credits_y = wrap(credits_y, minimum, maximum)

}
else
	credits_y = surface_height + 5

