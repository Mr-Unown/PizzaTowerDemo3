//Stored Alarm
frozen = false;
frozenalarm[0] = -1;
frozenalarm[1] = -1;
frozenalarm[2] = -1;

hsp = 0;
vsp = 0;
playerid = obj_player1
image_speed = 0
image_index = playerid.image_index
image_xscale = playerid.xscale
draw_sparks = false;
if (playerid.sprite_index == playerid.spr_supertaunt1 || playerid.sprite_index == playerid.spr_supertaunt2 || playerid.sprite_index == playerid.spr_supertaunt3 || playerid.sprite_index == playerid.spr_supertaunt4)
draw_sparks = true;
sprite_index = playerid.sprite_index
image_alpha = 0.85
randomize()
image_blend = choose(make_color_rgb(255, 0, 0), make_color_rgb(0, 255, 0))
alarm[1] = 3
gonealpha = 1
vanish = 0
supertauntindex = irandom_range(0,sprite_get_number(spr_supertauntcharge));
spr_palette = playerid.spr_palette
paletteselect = playerid.paletteselect
custompalette = playerid.custompalette
