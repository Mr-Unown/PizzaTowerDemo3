ini_open("playerData_"+global.savefile+".ini")
global.tutorialtrap = ini_read_string("Misc","tutorialtrap",false)
ini_close()
if global.tutorialtrap = 1	
{
	layer_sprite_change(s, bg_trapscreen2)		
    instance_destroy(id,false)
}