//Stored Alarm
frozen = false;
frozenalarm[0] = -1;
frozenalarm[1] = -1;
frozenalarm[2] = -1;

playerid = obj_player1
image_speed = 0
image_alpha = 0.85
randomize()
image_blend = choose(make_color_rgb(255, 0, 0), make_color_rgb(0, 255, 0))
alarm[1] = 3
alarm[0] = 13
gonealpha = 1
vanish = 0
spr_palette = playerid.spr_palette
paletteselect = playerid.paletteselect
custompalette = playerid.custompalette
