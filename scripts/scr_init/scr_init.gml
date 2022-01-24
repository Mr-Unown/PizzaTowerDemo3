//function scr_init() {
/// @description Initialize Game Stuff
global.shellactivate = false;
global.showcollisions = false;
display_set_gui_size(960, 540);
surface_resize(application_surface,960,540);
//Fart Counter
global.fartcounter = 0;
//Parallax
global.parallax_array = noone;
global.parallax_arraynumber = 0;

//Global Variable Init
enum temperature
{
	normal,
	hot,
	cold
}
global.visual_temperature = temperature.normal;
//Fonts
global.smallfont = font_add_sprite_ext(spr_smallerfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.,'\"-:?1234567890|", 1, 0)
global.font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
global.pointsfont = font_add_sprite_ext(spr_font_collect, "0123456789", 1, 0)
global.combofont = font_add_sprite_ext(spr_font_combo, "0123456789", 1, 0)
global.combofont2 = font_add_sprite_ext(spr_font_combo2, "1234567890", 1, 0)
global.smallnumber = font_add_sprite_ext(spr_smallnumber, "1234567890-", 1, 0)
global.timerfont = font_add_sprite_ext(spr_font_timer, "1234567890:", 1, 0)

//MISC
global.scrolloffset = 0;

//Read Save File
ini_open("saveData.ini")
//global.interpolation = ini_read_real("Option", "interpolation", false);
global.newtitlescreen = ini_read_real("Option", "newtitlescreen", false);
global.newsjumpcancel = ini_read_real("Option", "newsjumpcancel", false);
global.wallrunstyle = ini_read_real("Option", "wallrunstyle", 0);
global.collectstyle = ini_read_real("Option", "collectstyle", 0);
global.pitchshift = ini_read_real("Option", "pitchshift", 0);
global.escapecollect = ini_read_real("Option", "escapecollect", 0);
global.groundpoundstyle = ini_read_real("Option", "groundpoundstyle", 0);
global.divestyle = false; //This sucks. Removing it.
global.attackstyle = ini_read_real("Option", "attackstyle", 0);
global.destroyablecollect = false; //move into a separate object styled like the new collectable blocks
global.ratmode = ini_read_real("Option", "ratmode", false);
global.combostyle = false; //Oh this is the the funny new combostuff hud? merge into hudstyle
global.backdrop = 0
//Audio
global.mastervolume = ini_read_real("Option", "mastervolume", 1)
global.musicvolume = ini_read_real("Option", "musicvolume", 1)
global.soundeffectsvolume = ini_read_real("Option", "soundeffectsvolume", 1)
ini_close()
global.roomstart[0] = Realtitlescreen;
global.roomstart[1] = New_Realtitlescreen;
//Interpolation
//gpu_set_tex_filter(global.interpolation);
//Start by cleaning
global.flushtextures = true;
global.moppingframes = 0;
global.prefetcharray[0] = bg_title
global.prefetcharray[1] = bg_mainmenulight
global.prefetcharray[2] = spr_specialtitle
global.prefetcharray[3] = spr_player_3hpidle

while global.flushtextures = true
{
	draw_texture_flush();
	sprite_prefetch_multi(global.prefetcharray);
	global.flushtextures = false
	show_debug_message("Flushed Textures");
}

//Uncomment to simulate YYC in VM
//What this does is turn off loads of checks GMS2 does
gml_release_mode(true);
//}