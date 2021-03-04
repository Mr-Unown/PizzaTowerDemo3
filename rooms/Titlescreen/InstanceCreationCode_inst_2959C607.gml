ini_open("playerData_"+global.savefile+".ini")
global.tutorialtrap = ini_read_string("Misc","tutorialtrap",false)
ini_close()
if global.tutorialtrap = false {
targetRoom = Tutorialtrap
}
else
targetRoom = hub_room1
visible = false
hallwaydirection = 1

