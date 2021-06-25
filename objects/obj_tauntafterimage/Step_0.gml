if vanish = 1
{
	if gonealpha > 0
	gonealpha -= 0.25
	else if gonealpha <= 0
	instance_destroy()
}
spr_palette = playerid.spr_palette
paletteselect = playerid.paletteselect
supertauntindex += 0.5