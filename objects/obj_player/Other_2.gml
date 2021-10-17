game_set_speed(60, gamespeed_fps);
global.saveroom = ds_list_create()
global.savefile = "a"
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

