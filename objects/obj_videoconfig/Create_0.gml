optionselected = 0
ini_open("saveData.ini")
global.screenmelt = ini_read_string("Option", "panicbg", 1)
global.option_fullscreen = ini_read_string("Option", "fullscreen", 0)
global.option_resolution = ini_read_real("Option", "resolution", 1)
global.hitstunenabled = ini_read_real("Option", "hitstun", 1)
//global.interpolation = ini_read_real("Option", "interpolation", false);
ini_close()
optionsaved_fullscreen = global.option_fullscreen
optionsaved_resolution = global.option_resolution
optionsaved_panicbg = global.screenmelt
optionsaved_hitstun = global.hitstunenabled
//optionsaved_interpolation = global.interpolation
//global.defaulttime = 70
depth = -99
selecting = -1

