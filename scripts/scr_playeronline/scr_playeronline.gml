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
	if (global.onlinemode == true) {
		gms_self_set("paletteselect",paletteselect);		
		//gms_self_set("state",state);
		//gms_self_set("pogo",pogo);
		gms_self_set("character",character);
		gms_self_set("draw_angle",draw_angle);
	}
	return;
}

function scr_player_receive_sync_variables()
{
	if (global.onlinemode == true) {
		paletteselect = gms_other_get(player_id, "paletteselect");
		//state = gms_other_get(player_id, "state");
		//pogo = gms_other_get(player_id,"pogo");	
		character = gms_other_get(player_id, "character");
		draw_angle = gms_other_get(player_id, "draw_angle");
	}
	return;
}