if vanish = 1
{
	if gonealpha > 0
	gonealpha -= 0.5
	else if gonealpha <= 0
	instance_destroy()
}
if (playerid.state != 109 && playerid.state = 51 && (playerid.sprite_index != spr_player_shoryumineken && playerid.sprite_index != spr_playerN_spinjump) && playerid.state != states.breakdance  && !(playerid.pogomovespeed >= 12 && playerid.state == states.pogo) && playerid.state != states.jetpack && playerid.state != 114 && playerid.state != 111 && playerid.state != 10 && playerid.state != 91 && playerid.state != 17 && playerid.state != 9 && playerid.state != 96 && playerid.state != 70 && playerid.state != 22 && playerid.state != 71 && playerid.state != 42 && playerid.state != 35 && playerid.state != 40 && playerid.state != 43 && playerid.state != 37 && playerid.state != 33 && playerid.state != 63 && playerid.state != 68)
    vanish = 1;
visible = playerid.visible
spr_palette = playerid.spr_palette
paletteselect = playerid.paletteselect

