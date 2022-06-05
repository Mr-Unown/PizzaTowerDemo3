music = 0
pausedmusic = 0
fadeoff = 0
ded = false
global.music = noone
global.music2 = noone
global.soundposoffset = 0
global.extraescapemusic = 0
global.escaperumblemusic = noone
soundposoffset = global.soundposoffset
roomname = 214
dynamic = 0
ini_open("saveData.ini")
global.mastervolume = ini_read_real("Option", "mastervolume", 1)
global.musicvolume = ini_read_real("Option", "musicvolume", 1)
global.soundeffectsvolume = ini_read_real("Option", "soundeffectsvolume", 1)
ini_close()

global.scarysound = noone

//Beach Shit
playintro = true;
nolag = 0;
