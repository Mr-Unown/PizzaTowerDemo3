pausedmusic = 0
fadeoff = 0
global.music = 0
global.music2 = 0
global.soundposoffset = 0
global.extraescapemusic = 0
soundposoffset = global.soundposoffset
roomname = 214
dynamic = 0
ini_open("saveData.ini")
global.musicvolume = ini_read_real("Option", "musicvolume", 1)
global.soundeffectsvolume = ini_read_real("Option", "soundeffectsvolume", 1)
ini_close()

global.scarysound = -4


