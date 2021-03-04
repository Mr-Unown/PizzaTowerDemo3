global.pizzacoin += 1
obj_pizzacoinindicator.show = 50
if audio_is_playing(sfx_pizzacoin)
    audio_stop_sound(sfx_pizzacoin)
scr_soundeffect(sfx_pizzacoin)
repeat (3)
{
       instance_create(x, y, obj_keyeffect)
}
instance_destroy()


