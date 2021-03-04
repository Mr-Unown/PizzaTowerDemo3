var localvargrabbedby = 1
if (object_index == obj_player2)
    localvargrabbedby = 2
hsp = (movespeed * (-xscale))
if (floor(image_index) == (image_number - 1))
{
    taunttimer = 0
    parry = 0
    state = tauntstoredstate
    movespeed = tauntstoredmovespeed
    sprite_index = tauntstoredsprite
    with (obj_camera)
        zoom = 0
}
if (floor(image_index) == (image_number - 10))
{
    with (obj_camera)
        zoom = 0
}
if grounded
    movespeed -= 0.5
if (movespeed <= 0)
    movespeed = 0
if (!audio_is_playing(sfx_parry))
    scr_soundeffect(137)
if (parried_baddie > 0)
{
    parried_baddie--
    with (obj_baddie)
    {
        if (distance_to_object(other.id) < 64 && state != 109 && (!(state == 106 && thrown == 1)))
        {
            if (object_index == obj_ancho)
                parry = 1
            grabbedby = localvargrabbedby
            blowdirection = "parry"
            shakebuffer = 2.5
            shake = 1
            playerxscale = other.xscale
            if (!audio_is_playing(sfx_killingblow))
                scr_soundeffect(14)
            image_xscale = (-other.xscale)
            if (stunned < 500)
                stunned = 500
            alarm[3] = 3
            global.hit = (global.hit + 1)
            alarm[1] = 5
            state = 200
            grav = 0
            hsp = 0
            vsp = 0
            global.combotime = 60
			global.pausecombotime = true
			obj_tv.alarm[1] = 75				
            with (obj_camera)
            {
                shake_mag = 3
                shake_mag_acc = (3 / room_speed)
            }
        }
    }
    with (obj_snickexe)
    {
        if (distance_to_object(other.id) < 64)
        {
            repeat (6)
            {
                with (instance_create((x + random_range(-100, 100)), (y + random_range(-100, 100)), obj_balloonpop))
                    sprite_index = spr_shotgunimpact
            }
            x = (room_width / 2)
            y = -100
        }
    }
    with (obj_pizzaface)
    {
        if (distance_to_object(other.id) < 64)
        {
            scr_soundeffect(15)
            with (instance_create(x, y, obj_shake))
                sprite_index = other.sprite_index
            relax = 1
        }
    }
}
