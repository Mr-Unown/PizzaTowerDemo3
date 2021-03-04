ini_open("playerData_"+global.savefile+".ini")
timerank = ini_read_string("Time", string(levelsign), "none")
ini_close()

if (timerank == "none")
	visible = false
else
    visible = true
if (timerank == "s")
    image_index = 0
if (timerank == "a")
    image_index = 1
if (timerank == "b")
    image_index = 2
if (timerank == "c")
    image_index = 3
if (timerank == "d")
    image_index = 4



