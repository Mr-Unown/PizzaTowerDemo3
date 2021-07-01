if (audio_is_playing(sfx_breakblock1) || audio_is_playing(sfx_breakblock2))
{
   audio_stop_sound(sfx_breakblock1)
   audio_stop_sound(sfx_breakblock2)
}
scr_soundeffect(3, 4)
repeat (4)
instance_create((x + 16), y + 16, obj_debris)

if global.tutorialtrap = 0 {
	layer_sprite_change(s, bg_trapscreen2)	
	global.tutorialtrap = 1
}

ini_open("playerData_"+global.savefile+".ini")
ini_write_string("Misc", "tutorialtrap", true)
ini_close()

