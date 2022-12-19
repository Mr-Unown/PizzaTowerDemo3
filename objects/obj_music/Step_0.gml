if ((!audio_is_playing(mu_escape)) && global.panic == 1)
{
    audio_stop_all()
    scr_sound(mu_escape)
    pausedmusic = mu_escape
}
if (room != hub_room1)
    fadeoff = audio_sound_get_track_position(global.music)
else
    fadeoff = 0
	

if !audio_is_playing(global.music) && global.panic == 0 && room != rank_room
{
	audio_stop_all()
	scr_sound(global.music)
	pausedmusic = (global.music)
}