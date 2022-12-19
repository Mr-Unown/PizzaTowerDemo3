if obj_player.character == "P"
{
	tvsprite = spr_null
	obj_player.character = "DEEZNUTS"
	scr_characterspr()
	tvcount = 500
}
else if obj_player.character == "DEEZNUTS"
{
	tvsprite = spr_pizzytv
	obj_player.character = "G"
	scr_characterspr()
	tvcount = 500
}
else
{
	tvsprite = spr_pizzytv
	obj_player.character = "P"
	scr_characterspr()
	tvcount = 500
}