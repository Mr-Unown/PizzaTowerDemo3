var snd = argument[irandom((argument_count - 1))]
ini_open("saveData.ini")
global.soundeffectsvolume = ini_read_real("Option", "soundeffectsvolume", 1)
ini_close()
audio_sound_gain(audio_play_sound(snd, 1, false), (1 * global.soundeffectsvolume), 0)
