with (obj_camera)
    golf = 1
if (grabbedby == 1)
    var player = obj_player1
else
    player = obj_player2
with (player)
{
    scr_getinput()
    move = (key_left + key_right)
    baddiegrabbedID = other.id
    if (other.poweringup == 0)
    {
        if (move == -1 && other.angle <= 212)
            other.angle += 1
        else if (move == 1 && other.angle >= -32)
            other.angle -= 1
    }
    other.targetx = (lengthdir_x(200, other.angle) + other.x)
    other.targety = (lengthdir_y(200, other.angle) + other.y)
    if (other.targetx != other.x)
        other.image_xscale = sign((other.x - other.targetx))
    if (other.targetx != x)
        xscale = (-sign((x - other.targetx)))
    if (state == 112)
    {
        other.x = x
        other.y = y
        if (sprite_index != spr_haulingstart && sprite_index != spr_punchprep)
        {
            other.ydraw = (y - 40)
            other.xdraw = x
        }
        else if (sprite_index == spr_punchprep)
        {
            other.ydraw = (lengthdir_y(20, other.angle) + other.y)
            other.xdraw = (lengthdir_x(20, other.angle) + other.x)
        }
        else if (floor(image_index) == 0)
        {
            other.ydraw = y
            other.xdraw = x
        }
        else if (floor(image_index) == 1)
        {
            other.ydraw = (y - 10)
            other.xdraw = x
        }
        else if (floor(image_index) == 2)
        {
            other.ydraw = (y - 20)
            other.xdraw = x
        }
        else if (floor(image_index) == 3)
        {
            other.ydraw = (y - 30)
            other.xdraw = x
        }
    }
    if (other.poweringup == 1)
    {
        other.hit = 1
        if (other.intensity <= 0)
            going_up = 1
        if (other.intensity >= 25)
            going_up = 0
        if (going_up == 1)
            other.intensity += 0.45
        else if (going_up == 0)
            other.intensity -= 0.45
    }
    if (state != 112)
    {
        with (other.id)
        {
            hsp = 0
            thrown = 0
            state = 98
            movespeed = 0
            intensity = 0
            grabbed = 0
            thrown = 0
            hit = 0
            poweringup = 0
            going_up = 1
        }
    }
    if (other.hit == 0 && key_slap2 && other.poweringup == 0)
    {
        other.poweringup = 1
        sprite_index = spr_punchprep
    }
    if (other.hit == 1 && key_slap2 && other.poweringup == 1)
    {
        global.golfhit = (global.golfhit + 1)
        image_index = 0
        if (other.targetx != other.x)
            other.image_xscale = (-sign((other.x - other.targetx)))
        other.image_index = 0
        other.flash = 1
        other.state = 100
        other.thrown = 1
        other.xback = other.x
        other.yback = other.y
        other.vsp = lengthdir_y(other.intensity, other.angle)
        other.hsp = lengthdir_x(other.intensity, other.angle)
        other.movespeed = abs(other.hsp)
        other.hit = 0
        other.angle = 0
        other.poweringup = 0
        other.sprite_index = spr_pizzaball_flying
        sprite_index = spr_punch
        if (!audio_is_playing(sfx_punch))
            scr_soundeffect(34)
        if (!audio_is_playing(sfx_killingblow))
            scr_soundeffect(14)
        hsp = ((-xscale) * lengthdir_x((other.intensity / 20), other.angle))
        with (obj_camera)
        {
            shake_mag = 3
            shake_mag_acc = (3 / room_speed)
        }
    }
}
image_speed = 0.35
if (stunned < 50)
    stunned++

