with (other.id)
{
    if (((state == 23) || ((state == 24) || (state == 17))) && (cutscene == 0))
    {
    }
    else if ((state == 26) && (hurted == 0))
    {
    }
    else if (state == 14)
    {
    }
    else if (state == 1011 || state == 50)
    {
    }
    else if (state == 1)
    {
    }
    else if ((state == 12) || (state == 13) || (state == 1004))
    {
    }
    else if ((state != 72) && ((hurted == 0) && ((cutscene == 0) && (state != 71))))
    {
        scr_soundeffect(sfx_pephurt)
        alarm[8] = 60
        alarm[7] = 120
        hurted = 1
        if (xscale == other.image_xscale)
            sprite_index = spr_hurtjump
        else
            sprite_index = spr_hurt
        movespeed = 8
        vsp = -5
        timeuntilhpback = 300
		global.style -= 5
        instance_create(x, y, obj_spikehurteffect)
        state = 72
        image_index = 0
        flash = 1
        if ((character == "S") && (global.collect == 0))
        {
            state = 54
            sprite_index = spr_deathstart
        }
        if ((shotgunAnim == 0) && (character == "P"))
        {
            global.hurtcounter += 1
            if (character == "P")
            {
                if (global.collect > 100)
                    global.collect -= 100
                else
                    global.collect = 0
            }
            if (global.collect != 0)
            {
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
            }
        }
        else if (character == "P")
        {
            with (instance_create(x, y, obj_sausageman_dead))
                sprite_index = spr_shotgunback
            if (backupweapon == 1)
                backupweapon = 0
            else
                shotgunAnim = 0
        }
        if (character == "S")
        {
            if (global.collect > 0)
            {
                global.collect = 0
                repeat (10)
                    instance_create(x, y, obj_pizzaloss)
            }
        }
    }
}

