function scr_draw_player_name(name = "SPAMTON",admin_rights)
{
	if admin_rights & ar_owner {
		draw_set_color(c_yellow)
	} 
	else if admin_rights & ar_ban {
		draw_set_color(c_red)
	} 
	else if admin_rights & ar_kick {
		draw_set_color(c_green)
	}
	else {
		draw_set_color(c_black)
	}
	draw_set_font(arial_12);
	draw_text(x, y - 70, name);
}