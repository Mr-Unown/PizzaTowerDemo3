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
		draw_set_color(c_white)
	}
	draw_set_font(arial_12);
	draw_text(x, y - 70, name);
}

function scr_player_send_sync_variables()
{
	gms_self_set("spr_palette",spr_palette);
	gms_self_set("paletteselect",paletteselect);
	gms_self_set("colorheight",colorheight);
	gms_self_set("xscale",xscale);
	gms_self_set("yscale",yscale);
	gms_self_set("scale",scale);
	gms_self_set("character",character);
	gms_self_set("flash",flash);
	gms_self_set("draw_angle",draw_angle);
	for (var i = 0; i < colorheight; ++i) 
	{
	    gms_self_set("color_"+ string(i),color[i]);
	}
	
}

function scr_player_receive_sync_variables()
{
	spr_palette = gms_other_get(player_id, "spr_palette");
	paletteselect = gms_other_get(player_id, "paletteselect");
	colorheight = gms_other_get(player_id, "colorheight");
	xscale = gms_other_get(player_id, "xscale");
	yscale = gms_other_get(player_id, "yscale");
	scale = gms_other_get(player_id, "scale");
	character = gms_other_get(player_id, "character");
	flash = gms_other_get(player_id, "flash");
	draw_angle = gms_other_get(player_id, "draw_angle");
	for (var i = 0; i < colorheight; ++i) 
	{
		color[i] = gms_other_get(player_id, "color_"+ string(i));
	}
	
}