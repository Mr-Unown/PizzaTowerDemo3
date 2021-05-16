if (bulletbuffer == 0) && global.freezeframe = false
{
    if instance_exists(baddieID)
    {
        if (baddieID.hp > 1)
        {
            bulletbuffer = 25
            baddieID.hp -= 1
            scr_soundeffect(13)
            scr_soundeffect(30)
            instance_create(baddieID.x, baddieID.y, obj_slapstar)
            baddieID.flash = 1
            global.combotime = 60

			global.pausecombotime = true
			obj_tv.alarm[1] = 75
            baddieID.state = 106
            if (baddieID.stunned < 100)
                baddieID.stunned = 100
            instance_create(x, y, obj_bumpeffect)
            instance_create(baddieID.x, baddieID.y, obj_bangeffect)
            baddieID.vsp = -4
            if (baddieID != obj_pizzaball)
                baddieID.hsp = (other.image_xscale * 5)
            else if grounded
                baddieID.hsp = (other.image_xscale * 8)
            else if (!grounded)
                baddieID.hsp = (other.image_xscale * 10)
            instance_destroy(other.id)
        }
        else
        {
            with (baddieID)
            {
                instance_create(x, y, obj_baddiegibs)
                instance_destroy()
            }
            instance_destroy(other.id)
        }
    }
}


