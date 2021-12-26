global.smallfont = font_add_sprite_ext(spr_smallerfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.,'\"-:?1234567890|", 1, 0)
global.font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
global.pointsfont = font_add_sprite_ext(spr_font_collect, "0123456789", 1, 0)
global.combofont = font_add_sprite_ext(spr_font_combo, "0123456789", 1, 0)
global.combofont2 = font_add_sprite_ext(spr_font_combo2, "1234567890", 1, 0)
global.smallnumber = font_add_sprite_ext(spr_smallnumber, "1234567890-", 1, 0)
global.timerfont = font_add_sprite_ext(spr_font_timer, "1234567890:", 1, 0)
ini_open("saveData.ini")
global.mastervolume = ini_read_real("Option", "mastervolume", 1)
global.musicvolume = ini_read_real("Option", "musicvolume", 1)
global.soundeffectsvolume = ini_read_real("Option", "soundeffectsvolume", 1)
ini_close()
pause = 0
i = 0
color = make_color_rgb(121, 103, 151)
selected = 0
image_speed = 0
shroomdone = 0
cheesedone = 0
tomatodone = 0
sausagedone = 0
pineappledone = 0
depth = -98
draw_screen = 0
global.nocombo = 0
global.pausenicemusic = noone;
//global.pausenicetrack = 0;

global.tutorialtrap = 0
global.verticalh = 0
global.hx = 0
global.hy = 0
global.desertnight = 0
global.lapping = 0
global.laptouched = 0
global.lap = 0
global.lapseverity = 0
global.christmasend = 0
global.debugmode = 0
global.storedgun = 0
global.hudmode = 0
global.ruinmusic = 0
global.factorymusic = 0
global.fakepeppino = 0
global.peppermode = 0

