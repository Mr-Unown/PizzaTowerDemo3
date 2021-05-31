
if global.hudmode == false
{
switch(global.newhud)
{
	case 0:
	#region OLD TV
	var _xoffset = irandom_range(-3,3);
	var _yoffset = irandom_range(-3,3);
	draw_set_font(global.font)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	if shake = false
	{
		drawx = 832;
		drawy = 74;
		drawx2 = 750;
		drawy2 = -14;
	}
	else
	{
		drawx = 832 + _xoffset;
		drawy = 74 + _yoffset;
		drawx2 = 750 + _xoffset;
		drawy2 = -14 + _yoffset;
	}
	if (global.combo != 0 && global.miniboss == 0 && global.combotime != 0 && (tvsprite == spr_tvdefault || tvsprite == spr_tvcombo)) && tvsprite != spr_tvboot
	{
		//New Combo Meter
		var combotimer = global.combotime / 60
		var xoffset = clamp(sprite_get_width(spr_tvdefault) * combotimer, 13, sprite_get_width(spr_tvdefault))
		if xoffset <= 13
		draw_sprite_ext(spr_tvdefault, -1, drawx, drawy, 1, 1, 0, c_white, alpha)
		else
		draw_sprite_part_ext(spr_tvdefault, -1, (sprite_get_width(spr_tvdefault)) * combotimer, 0, (sprite_get_width(spr_tvdefault)), sprite_get_height(spr_tvdefault), drawx2 + xoffset, drawy2 ,1 ,1 ,c_white , alpha)
		draw_sprite_part_ext(tvsprite, -1, 0, 0, (sprite_get_width(tvsprite)) * combotimer, sprite_get_height(tvsprite),drawx2 ,drawy2 ,1 ,1 ,c_white , alpha)
		//Draw Text
		if room != strongcold_endscreen  && global.combobuffer <= 0
		{
			if (global.coop == 0)
				draw_text(832, 60, string_hash_to_newline(global.collect))
			else
			{
				draw_text(832, 40, string_hash_to_newline(obj_player1.collectscore))
				draw_text(832, 80, string_hash_to_newline(obj_player2.collectscore))
			}
		}
		else if room != strongcold_endscreen && global.combobuffer > 0
		{
		draw_sprite_ext(spr_tvcombotext, -1, 832, 74, 1, 1, 0, c_white, 1)
		draw_text(852, 75, string_hash_to_newline(global.combo))
		}
	}
	else if (room != strongcold_endscreen)
	    draw_sprite_ext(tvsprite, -1, drawx, drawy, 1, 1, 0, c_white, alpha)
	if (tvsprite == spr_tvdefault && room != strongcold_endscreen && global.miniboss == 0) && global.combo = 0
	{
	    chose = 0
		if (global.coop == 0)
			draw_text(832, 60, string_hash_to_newline(global.collect))
		else
		{
			draw_text(832, 40, string_hash_to_newline(obj_player1.collectscore))
			draw_text(832, 80, string_hash_to_newline(obj_player2.collectscore))
		}
	}
	else if (global.miniboss == 1) && tvsprite = spr_tvnoise
	    draw_text(832, 80, string_hash_to_newline(global.boxhp))
	#region TEXT
	draw_set_font(global.font)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text(xi, yi, string_hash_to_newline(message))
	#endregion		
	#endregion
	break;
	case 1:
	#region NEW TV
	if !(room == Realtitlescreen || room == rank_room || room == timesuproom || room == boss_room1)
	{
		draw_sprite_ext(newtvsprite, -1, 832, 100 + newhudyoffset, 1, 1, 0, c_white, 1)
		if global.combo != 0 && global.miniboss == 0 && global.combotime != 0 && newtvsprite != spr_tv_open && newtvsprite != spr_tv_static && newtvsprite != spr_tv_noiseboss
		{
			if global.combobuffer > 0
			{
				//Combo text
				draw_sprite_ext(spr_tv_combo, image_index, 832, 100 + newhudyoffset, 1, 1, 0, c_white, 1)		
				//Combo counter
				draw_set_font(global.combofont)
				draw_set_halign(fa_center)
				draw_set_color(c_white)

				var _combo = string(global.combo)
				if (global.combo < 10)
					_combo = "0" + string(global.combo)
				var _string_length = string_length(_combo);
				for (var i = 0; i < _string_length; i++) 
				{
					var _xx = (-(string_width(_combo)/ 2) + ((string_width(_combo)/_string_length) * i)) 
					var _yy = (i * -4)		
					if newshake = true
					{
					var _xx = (-(string_width(_combo)/ 2) + ((string_width(_combo)/_string_length) * i)) + irandom_range(-2,2)
					var _yy = (i * -4) + irandom_range(-2,2)
					}
					draw_text(835 + _xx, 82 + _yy + newhudyoffset, string_char_at(_combo,i + 1));
				}
			}
			//Combobar
			var barindex = clamp(round((global.combotime / 60) * 4) - 1,0,3);											
			draw_sprite_ext(spr_tv_combobar, barindex, 832, 107 + newhudyoffset, 1, 1, 0, c_white, 1)
		}
		else if (global.miniboss == 1) &&  newtvsprite = spr_tv_noiseboss
		{
			#region BOXHP
				//Combo counter
				draw_set_font(global.combofont)
				draw_set_halign(fa_center)
				draw_set_color(c_white)

				var _hp = string(global.boxhp)
				if (global.boxhp < 10)
					_hp = "0" + string(global.boxhp)
				var _string_length = string_length(_hp);
				for (var i = 0; i < _string_length; i++) 
				{
					var _xx = (-(string_width(_hp)/ 2) + ((string_width(_hp)/_string_length) * i)) 
					var _yy = (i * -4)		
					if newshake = true
					{
					var _xx = (-(string_width(_hp)/ 2) + ((string_width(_hp)/_string_length) * i)) + irandom_range(-2,2)
					var _yy = (i * -4) + irandom_range(-2,2)
					}
					draw_text(835 + _xx, 82 + _yy + newhudyoffset, string_char_at(_hp,i + 1));
				}
			#endregion
		}
	}

	#region TEXT
	//NEW TEXT
	if shownewtext = true
	{
	draw_sprite_ext(textbubblesprites, textbubbleframes, 532, 45 + newhudyoffset, 1, 1, 0, c_white, 1)
	
	if !surface_exists(textpromptsurface)
		textpromptsurface = surface_create(300,100)
	surface_set_target(textpromptsurface)
	draw_clear_alpha(c_black, 0)
	//var pizzafont = true;
	var _newmessage = newmessage;
	//Font Options
	//if pizzafont = false
	//{
		draw_set_font(font1);
		draw_set_halign(fa_left);
		draw_set_color(c_black);
		_newmessage = newmessage;
	/*}
	else
	{
		draw_set_font(global.smallfont);
		draw_set_halign(fa_left);
		draw_set_color(make_color_rgb(255,240,240));//c_white);
		_newmessage = string_upper(newmessage);
	}*/	
	//Text
	if textbubblesprites = spr_tv_bubble
	{
		//CONT. So I moved it here 
		if floor(text_x) <= -(floor(string_width(_newmessage)) + 5) //- 775)
		{
			textbubblesprites = spr_tv_bubbleclose;
			textbubbleframes = 0;
		}
		draw_text(text_x, 45, _newmessage)
	}

	surface_reset_target()
	//draw_text(367, 300, string(floor(text_x)))
	//draw_text(367, 350, string(string_width(newmessage)))	
	if surface_exists(textpromptsurface)
		draw_surface(textpromptsurface, 367, -10 + newhudyoffset)
	}
	
	//OLD TEXT
	draw_set_font(global.font)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text(xi, yi, string_hash_to_newline(oldmessage))
	#endregion
	
	#endregion
	break;
}

	if instance_exists(obj_pizzaball)
	    draw_text(832, 300, string_hash_to_newline(((string(global.golfhit) + " ") + "STROKES")))
}