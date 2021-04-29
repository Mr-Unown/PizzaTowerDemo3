if global.hudmode != 1
{
var _xoffset = random_range(-3,3);
var _yoffset = random_range(-3,3);
draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(xi, yi, string_hash_to_newline(message))
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
if (global.combo != 0 && global.miniboss == 0 && global.combotime != 0 && (tvsprite == spr_tvdefault || tvsprite == spr_tvcombo))
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
	if room != strongcold_endscreen  && combobuffer <= 0
	{
		if (global.coop == 0)
			draw_text(832, 60, string_hash_to_newline(global.collect))
		else
		{
			draw_text(832, 40, string_hash_to_newline(obj_player1.collectscore))
			draw_text(832, 80, string_hash_to_newline(obj_player2.collectscore))
		}
	}
	else if room != strongcold_endscreen && combobuffer > 0
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
if instance_exists(obj_pizzaball)
    draw_text(832, 300, string_hash_to_newline(((string(global.golfhit) + " ") + "STROKES")))


}