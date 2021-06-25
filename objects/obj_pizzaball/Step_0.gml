switch state
{
    case 98:
        scr_golf_idle()
        break;
    case 100:
        scr_golf_hit()
        break;
    case 99:
        scr_golf_grabbed()
        break;
}

if (thrown == 1)
{
    with (obj_camera)
        golf = 1
}
else
{
    with (obj_camera)
        golf = 0
}
if (state != 99)
{
    ydraw = y
    xdraw = x
}
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (place_meeting(x, y, obj_player1) && obj_player1.cutscene == 0 && obj_player1.state == 22)
{
    with (obj_player1)
    {
        if (other.state == 98 && state == 22)
        {
            other.sprite_index = spr_pizzaball_stun
            other.stunned = 25
            other.state = 99
            other.intensity = 0
            movespeed = 0
            image_index = 0
            sprite_index = spr_haulingstart
            state = states.golf
            other.grabbedby = 1
            if (xscale == 1)
                other.angle = 0
            else
                other.angle = 180
        }
    }
}
if (place_meeting(x, y, obj_player2) && obj_player2.cutscene == 0 && obj_player2.state == 22)
{
    with (obj_player2)
    {
        if (other.state == 98 && state == 22)
        {
            other.sprite_index = spr_pizzaball_stun
            other.stunned = 25
            other.state = 99
            other.intensity = 0
            movespeed = 0
            image_index = 0
            sprite_index = spr_haulingstart
            state = states.golf
            other.grabbedby = 2
            if (xscale == 1)
                other.angle = 0
            else
                other.angle = 180
        }
    }
}
if (place_meeting(x, y, obj_spike) || place_meeting(x, y, obj_redspike))
{
    if ((!place_meeting(xback, yback, obj_spike)) && (!place_meeting(xback, yback, obj_redspike)))
    {
        flash = 1
        x = xback
        y = yback
        hsp = 0
        vsp = 0
        thrown = 0
        state = 98
        movespeed = 0
        intensity = 0
        grabbed = 0
        thrown = 0
        hit = 0
        poweringup = 0
        going_up = 1
        with (obj_camera)
        {
            shake_mag = 3
            shake_mag_acc = (3 / room_speed)
            golf = 0
        }
        var size = random_range(0.6, 1.2)
        repeat random_range(3, 5)
        {
            with (instance_create((x + random_range(-5, 5)), (y + random_range(-5, 5)), obj_slimedebris))
            {
                image_xscale = size
                image_yscale = image_xscale
            }
        }
    }
    else
    {
        flash = 1
        x = xstart
        y = ystart
        hsp = 0
        vsp = 0
        thrown = 0
        state = 98
        movespeed = 0
        intensity = 0
        grabbed = 0
        thrown = 0
        hit = 0
        poweringup = 0
        going_up = 1
        with (obj_camera)
        {
            shake_mag = 3
            shake_mag_acc = (3 / room_speed)
            golf = 0
        }
        size = random_range(0.6, 1.2)
        repeat random_range(3, 5)
        {
            with (instance_create((x + random_range(-5, 5)), (y + random_range(-5, 5)), obj_slimedebris))
            {
                image_xscale = size
                image_yscale = image_xscale
            }
        }
    }
}


