/// @description Initialize Game Stuff
game_set_speed(60, gamespeed_fps);
global.saveroom = ds_list_create()
global.savefile = "a"
ini_open("saveData.ini")
global.newtitlescreen = ini_read_real("Option", "newtitlescreen", false);
global.newsjumpcancel = ini_read_real("Option", "newsjumpcancel", false);
global.wallrunstyle = ini_read_real("Option", "wallrunstyle", 0);
global.collectstyle = ini_read_real("Option", "collectstyle", 0);
global.pitchshift = ini_read_real("Option", "pitchshift", 0);
global.escapecollect = ini_read_real("Option", "escapecollect", 0);
global.freefallstyle = ini_read_real("Option", "freefallstyle", 0);
global.divestyle = ini_read_real("Option", "divestyle", 0);
global.attackstyle = ini_read_real("Option", "attackstyle", 0);
global.destroyablecollect = ini_read_real("Option", "destroyablecollect", 0);
global.ratmode = ini_read_real("Option", "ratmode", false);
ini_close()
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

