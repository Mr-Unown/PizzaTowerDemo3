if audio_is_playing(sfx_breakiceblock)
    audio_stop_sound(sfx_breakiceblock)
scr_soundeffect(sfx_breakiceblock)
with instance_create(x,y,obj_balloonpop)
	sprite_index = spr_parryeffect
repeat(6)
with (instance_create((x + 32), (y + 32), obj_debris))
{
	initialhsp = obj_player.hsp / 1.7
	initialvsp = clamp(obj_player.vsp / 1.3,-12,random_range(0,-5))
    sprite_index = spr_icedebris
}