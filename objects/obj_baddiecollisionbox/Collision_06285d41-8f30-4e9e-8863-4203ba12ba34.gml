if instance_exists(baddieID) && global.freezeframe = false
{
    if (baddieID.thrown == 0)
    {
        baddieID.grabbedby = other.playerid
        with (baddieID)
        {
            if (!audio_is_playing(sfx_killingblow))
                scr_soundeffect(sfx_killingblow)
            image_xscale = (-obj_slaphitbox2.image_xscale)
			if stunned < 200
				stunned = 200
            alarm[3] = 3
            global.hit = (global.hit + 1)
            if (other.object_index == obj_pizzaball)
                global.golfhit = (global.golfhit + 1)
            hp -= 1
            instance_create((x + (obj_slaphitbox2.image_xscale * 30)), y, obj_bumpeffect)
            alarm[1] = 5
            thrown = 1
            vsp = -5
            hsp = ((-image_xscale) * 20)
            state = 106
            grav = 0.5
            global.combotime = 60

			global.pausecombotime = true
			obj_tv.alarm[1] = 75			
            flash = 1
            with (obj_camera)
            {
                shake_mag = 3
                shake_mag_acc = (3 / room_speed)
            }
        }
    }
}
with (other.id)
{
    effect = 1
    effectx = other.x
    effecty = other.y
}


