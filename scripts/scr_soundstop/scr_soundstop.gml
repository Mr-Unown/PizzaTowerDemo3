var snd = argument[irandom((argument_count - 1))]
global.music = audio_play_sound(snd, 10, false)
ini_open("saveData.ini")
global.musicvolume = ini_read_real("Option", "musicvolume", 1)
ini_close()
audio_sound_gain(global.music, (0.6 * global.musicvolume), 0)
