if (thrown == 0 && grabbed = true)
{
    grabbedby = other.playerid
    with (id)
    {
        if (!audio_is_playing(sfx_killingblow))
            scr_soundeffect(sfx_killingblow)
        image_xscale = (-obj_slaphitbox2.image_xscale)
        instance_create((x + (obj_slaphitbox2.image_xscale * 30)), y, obj_bumpeffect)
        thrown = 1
        vsp = -5
        hsp = ((-image_xscale) * 20)
        grav = 0.5
        flash = 1
        with (obj_camera)
        {
            shake_mag = 3
            shake_mag_acc = (3 / room_speed)
        }
    }
}
with (other.id)
{
    effect = 1
    effectx = other.x
    effecty = other.y
}


