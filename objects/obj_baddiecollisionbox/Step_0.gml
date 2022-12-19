if (!instance_exists(baddieID))
    instance_destroy()
if instance_exists(baddieID)
{
    x = baddieID.x
    y = baddieID.y
    image_xscale = baddieID.image_xscale
}
if (instance_exists(baddieID) && place_meeting(x, y, obj_player) && obj_player.cutscene == 0)
{
    if (baddieID.state != 101)
    {
        with (obj_player)
        {
            if (instakillmove == 1 && other.baddieID.object_index != obj_pizzaball)
            {
                instance_destroy(other.baddieID)
                instance_destroy(other.id)
                global.hit += 1
                global.combotime = 60
				
                if ((!grounded) && state != 67 && key_jump2)
                {
                    suplexmove = 0
                    vsp = -11
                }
            }
            if (instance_exists(other.baddieID) && y < other.baddieID.y && attacking == 0 && state == 51 && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_stompprep)
            {
                scr_sound(sound_enemyslap)
                suplexmove = 0
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                if (vsp > 0)
                {
                    other.baddieID.stunned = 200
                    if (x != other.baddieID.x)
                        other.baddieID.image_xscale = (-sign((other.baddieID.x - x)))
                    image_index = 0
                    if key_jump2
                    {
                        other.baddieID.vsp = -5
                        other.baddieID.hsp = ((-other.baddieID.image_xscale) * 3)
                        instance_create(x, (y + 50), obj_stompeffect)
                        other.baddieID.state = 98
                        stompAnim = 1
                        other.baddieID.image_index = 0
                        vsp = -14
                        sprite_index = spr_stompprep
                    }
                    else
                    {
                        other.baddieID.vsp = -5
                        other.baddieID.hsp = ((-other.baddieID.image_xscale) * 3)
                        instance_create(x, (y + 50), obj_stompeffect)
                        other.baddieID.state = 98
                        stompAnim = 1
                        other.baddieID.image_index = 0
                        vsp = -9
                        sprite_index = spr_stompprep
                    }
                }
            }
            if (instance_exists(other.baddieID) && y > other.baddieID.y && other.baddieID.vsp > 0)
            {
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                other.baddieID.stunned = 200
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = (-sign((other.baddieID.x - x)))
                other.baddieID.vsp = -5
                other.baddieID.hsp = ((-other.baddieID.image_xscale) * 5)
                instance_create(x, (y - 50), obj_stompeffect)
                other.baddieID.state = 98
                other.baddieID.image_index = 0
                scr_sound(sound_enemystomp)
            }
		 if (instance_exists(other.baddieID)) && state = 0
		 {
			other.baddieID.state = 98	
			other.baddieID.vsp = -4
            other.baddieID.hsp = ((-other.baddieID.image_xscale) * 2)
			other.baddieID.stunned = 100
		 }
            if (instance_exists(other.baddieID) && state == 62)
            {
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                global.hit += 1
                global.combotime = 60
                instance_create(other.baddieID.x, other.baddieID.y, obj_slapstar)
                instance_create(other.baddieID.x, other.baddieID.y, obj_baddiegibs)
                other.baddieID.flash = 1
                other.baddieID.hp -= 1
                scr_sound(sound_enemystomp)
                instance_create(x, y, obj_bumpeffect)
                other.baddieID.stunned = 200
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = (-sign((other.baddieID.x - x)))
                other.baddieID.vsp = -5
                other.baddieID.hsp = ((-other.baddieID.image_xscale) * 5)
                hsp = ((-xscale) * 4)
                vsp = -4
                machpunchAnim = 1
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = (-sign((other.baddieID.x - x)))
                other.baddieID.state = 98
                image_index = 0
                state = 50
                if (other.baddieID.hp == 0 && other.baddieID.object_index != obj_boss)
                {
                    instance_destroy(other.id)
                    instance_destroy(other.baddieID)
                }
                else if (other.baddieID.hp <= 0 && other.baddieID.object_index == obj_boss)
                {
                    other.baddieID.thrown = 1
                    vsp = -5
                }
            }
            if (instance_exists(other.baddieID) && (state == 63 || state == 39) && other.baddieID.grounded == 1)
            {
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                global.hit += 1
                global.combotime = 60
                instance_create(other.baddieID.x, other.baddieID.y, obj_slapstar)
                instance_create(other.baddieID.x, other.baddieID.y, obj_baddiegibs)
                other.baddieID.flash = 1
                other.baddieID.hp -= 1
                scr_sound(sound_enemystomp)
                instance_create(x, y, obj_bumpeffect)
                other.baddieID.vsp = -10
                other.baddieID.hsp = xscale
                other.baddieID.image_index = 0
                other.baddieID.stunned = 200
                other.baddieID.state = 98
                image_index = 0
                machpunchAnim = 1
                if ((!grounded) && state != 67 && key_jump2)
                {
                    suplexmove = 0
                    sprite_index = spr_mach2jump
                    vsp = -11
                }
                if (other.baddieID.hp == 0 && other.baddieID.object_index != obj_boss)
                {
                    instance_destroy(other.baddieID)
                    instance_destroy(other.id)
                }
                else if (other.baddieID.hp <= 0 && other.baddieID.object_index == obj_boss)
                {
                    other.baddieID.thrown = 1
                    vsp = -5
                }
            }
            if (instance_exists(other.baddieID) && other.baddieID.state != 88 && attacking == 0 && state != 50 && state != 66 && (!y < other.baddieID.y) && (!y > other.baddieID.y) && grabbing == 0 && other.baddieID.state != 98 && state != 15 && state != 2)
            {
                if (x != other.baddieID.x)
                {
                    other.baddieID.image_xscale = (-sign((other.baddieID.x - x)))
                    xscale = (-sign((x - other.baddieID.x)))
                }
                hsp = ((-xscale) * 8)
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                vsp = -4
                other.baddieID.image_xscale = (-xscale)
                other.baddieID.hsp = ((-other.baddieID.image_xscale) * 4)
                other.baddieID.vsp = -4
                if (other.baddieID.state == 94 || other.baddieID.state == 90)
                    other.baddieID.state = 86
                if (other.baddieID.state == 87)
                {
                    stunned = 30
                    other.baddieID.state = 98
                }
                image_index = 0
                state = 65
                if (other.baddieID.state == 96)
                    other.baddieID.state = 86
            }
        }
    }
}
if (!instance_exists(baddieID))
    instance_destroy()
