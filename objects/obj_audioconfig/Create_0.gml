optionselected = 0
depth = -99
selected = 0
ini_open("playerData_"+global.savefile+".ini")
global.mastervolume = ini_read_real("Option", "mastervolume", 1)
global.musicvolume = ini_read_real("Option", "musicvolume", 1)
global.soundeffectsvolume = ini_read_real("Option", "soundeffectsvolume", 1)
transfervalue = ini_read_real("Option", "mastervolume", 1)
ini_close()
value = transfervalue
max_value = 1
image_speed = 0
image_index = 0
draw_x = 185
draw_y = 85
key = 0
key_selected = 0
change = 0


