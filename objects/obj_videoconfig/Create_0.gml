optionselected = 0
ini_open("saveData.ini")
global.screenmelt = ini_read_string("Option", "panicbg", 1)
global.option_fullscreen = ini_read_string("Option", "fullscreen", 0)
global.option_resolution = ini_read_real("Option", "resolution", 1)
ini_close()
optionsaved_fullscreen = global.option_fullscreen
optionsaved_resolution = global.option_resolution
optionsaved_panicbg = global.screenmelt
depth = -99
selecting = -1

