
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
	#endregion
	break;
	case 1:
	#region NEW TV
	if !(room == Realtitlescreen || room == rank_room || room == timesuproom || room == boss_room1)
	{
		draw_sprite_ext(newtvsprite, -1, 832, 100 + newhudyoffset, 1, 1, 0, c_white, 1)
		if global.combo != 0 && global.miniboss == 0 && global.combotime != 0 && newtvsprite != spr_tv_open
		{
			if global.combobuffer > 0
			{
				draw_sprite_ext(spr_tv_combo, image_index, 832, 100 + newhudyoffset, 1, 1, 0, c_white, 1)		
				draw_set_font(global.combofont)
				draw_set_halign(fa_center)
				draw_set_color(c_white)
				var _combo = string(global.combo)
				if (global.combo < 10)
					_combo = "0" + string(global.combo)
				draw_text(830, 90 + newhudyoffset, string_hash_to_newline(_combo))
			}
			var barindex = floor((global.combotime / 60) * 4) - 1;
			draw_sprite_ext(spr_tv_combobar, barindex, 832, 100 + newhudyoffset, 1, 1, 0, c_white, 1)					
		}
	}

	
	#endregion
	break;
}
	draw_set_font(global.font)
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text(xi, yi, string_hash_to_newline(message))
	if instance_exists(obj_pizzaball)
	    draw_text(832, 300, string_hash_to_newline(((string(global.golfhit) + " ") + "STROKES")))
}