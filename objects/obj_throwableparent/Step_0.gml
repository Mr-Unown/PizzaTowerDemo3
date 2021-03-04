if (obj_player.state == 77 && grounded)
{
    if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
    {
        vsp = -7
    }
}

if ((grounded || (grounded && (!place_meeting(x, y, obj_platform)))) && vsp > 0) && grabbed = 0 
{
    hsp = 0
    thrown = 0	
}
if (grabbed == 1)
{
    image_xscale = (-playerid.xscale)
    grav = 0
    depth = 0
    playerid.baddiegrabbedID = id
    if (playerid.state == 3 || playerid.state == 28 || playerid.state == 46 || playerid.state == 41 || playerid.state == 42 || playerid.state == 10)
    {
        thrown = 0
        grav = 0
        grounded = 0
        x = playerid.x
        if (playerid.sprite_index != spr_player_haulingstart && playerid.state != 3)
            y = (playerid.y - 60)
        else if (floor(playerid.image_index) == 0)
            y = (playerid.y - 20)
        else if (floor(playerid.image_index) == 1)
            y = (playerid.y - 30)
        else if (floor(playerid.image_index) == 2)
            y = (playerid.y - 40)
        else if (floor(playerid.image_index) == 3)
            y = (playerid.y - 50)
        image_xscale = (-playerid.xscale)
    }
    with (playerid)
    {
        scr_getinput()
        move = (key_left2 + key_right2)
        if (!(state == 46 || state == 3 || state == 28 || state == 41 || state == 42 || state == 10 || state == 47 || state == 43 || state == 48 || state == 49 || state == 50))
        {
            other.grav = 0.5
            other.x = x
            other.y = y
            other.grabbed = 0
        }
    }
    hsp = 0
    if (playerid.state == 3)
    {
        x = (playerid.x + (playerid.xscale * 50))
        y = playerid.y
        flash = 1
        hp -= 5
    }
    if (playerid.state == 47)
    {
        instance_create((x + (playerid.xscale * 30)), y, obj_bumpeffect)
        grabbed = 0
        x = playerid.x
        vsp = 0
        y = (playerid.y - 5)
        thrown = 1
        hsp = ((-image_xscale) * 25)
        grav = 0
        hp -= 5
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_baddiegibs)
        flash = 1
        with (obj_camera)
        {
            shake_mag = 3
            shake_mag_acc = (3 / room_speed)
        }
    }
    if (playerid.state == 46 && playerid.sprite_index == playerid.spr_swingding)
    {
        if (floor(playerid.image_index) == 0)
        {
            depth = -8
            x = (playerid.x + (playerid.xscale * 25))
            y = playerid.y
        }
        if (floor(playerid.image_index) == 1)
        {
            depth = -8
            x = playerid.x
            y = playerid.y
        }
        if (floor(playerid.image_index) == 2)
        {
            depth = -8
            x = (playerid.x + (playerid.xscale * -25))
            y = playerid.y
        }
        if (floor(playerid.image_index) == 3)
        {
            depth = 0
            x = (playerid.x + (playerid.xscale * -50))
            y = playerid.y
        }
        if (floor(playerid.image_index) == 4)
        {
            depth = 0
            x = (playerid.x + (playerid.xscale * -25))
            y = playerid.y
        }
        if (floor(playerid.image_index) == 5)
        {
            depth = 0
            x = playerid.x
            y = playerid.y
        }
        if (floor(playerid.image_index) == 6)
        {
            depth = 0
            x = (playerid.x + (playerid.xscale * 25))
            y = playerid.y
        }
        if (floor(playerid.image_index) == 7)
        {
            depth = 0
            x = (playerid.x + (playerid.xscale * 50))
            y = playerid.y
        }
    }
    if (playerid.state == 50)
    {
        grav = 0.5
        instance_create(x, (y + 20), obj_bumpeffect)
        grabbed = 0
        thrown = 1
        flash = 1
        hp -= 5
        x = playerid.x
        y = playerid.y
        if (playerid.sprite_index == spr_shoulder)
            vsp = 15
        if (playerid.sprite_index == spr_diagonaldownthrow)
        {
            hsp = ((-image_xscale) * 10)
            vsp = 15
        }
        if (playerid.sprite_index == spr_diagonalupthrow)
        {
            hsp = ((-image_xscale) * 10)
            vsp = -15
        }
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_baddiegibs)
        with (obj_camera)
        {
            shake_mag = 3
            shake_mag_acc = (3 / room_speed)
        }
    }
    if (playerid.state == 41)
    {
        flash = 1
        hp -= 5
        grav = 0.5
        grabbed = 0
        thrown = 1
        x = playerid.x
        y = playerid.y
        hsp = ((-image_xscale) * 10)
        vsp = -10
    }
    if (playerid.state == 49)
    {
        instance_create((x + ((-playerid.xscale) * 15)), (y - 50), obj_bumpeffect)
        grav = 0.5
        thrown = 1
        flash = 1
        hp -= 5
        hsp = ((-image_xscale) * 2)
        grabbed = 0
        vsp = -20
        instance_create(x, y, obj_slapstar)
        instance_create(x, y, obj_baddiegibs)
        flash = 1
        with (obj_camera)
        {
            shake_mag = 3
            shake_mag_acc = (3 / room_speed)
        }
    }
    if (playerid.state == 10)
    {
        x = (playerid.x + (playerid.xscale * 15))
        y = playerid.y
    }
    if (playerid.state == 43)
    {
        if (playerid.character == "P")
        {
            if (floor(playerid.image_index) == 0)
            {
                depth = 0
                x = (playerid.x + (playerid.xscale * 10))
                y = playerid.y
            }
            if (floor(playerid.image_index) == 1)
            {
                depth = 0
                x = (playerid.x + (playerid.xscale * 5))
                y = playerid.y
            }
            if (floor(playerid.image_index) == 2)
            {
                depth = 0
                x = playerid.x
                y = playerid.y
            }
            if (floor(playerid.image_index) == 3)
            {
                depth = 0
                x = (playerid.x + (playerid.xscale * -5))
                y = playerid.y
            }
            if (floor(playerid.image_index) == 4)
            {
                depth = 0
                x = (playerid.x + (playerid.xscale * -10))
                y = playerid.y
            }
            if (floor(playerid.image_index) == 5)
            {
                depth = -8
                x = (playerid.x + (playerid.xscale * -5))
                y = playerid.y
            }
            if (floor(playerid.image_index) == 6)
            {
                depth = -8
                x = playerid.x
                y = playerid.y
            }
            if (floor(playerid.image_index) == 7)
            {
                depth = -8
                x = (playerid.x + (playerid.xscale * 5))
                y = playerid.y
            }
        }
        else
        {
            depth = -7
            x = playerid.x
            y = (playerid.y - 40)
        }
        if (playerid.sprite_index == playerid.spr_piledriverland && floor(playerid.image_index) == (playerid.image_number - 1))
        {
            with (playerid)
            {
                state = 58
                vsp = -8
                sprite_index = spr_machfreefall
            }
            flash = 1
            hp -= 5
            instance_create(x, y, obj_slapstar)
            instance_create(x, y, obj_baddiegibs)
            grabbed = 0
            thrown = 1
            x = playerid.x
            y = playerid.y
            grav = 0.5
            hsp = ((-image_xscale) * 10)
            vsp = -10
        }
    }
}
if (place_meeting(x, y, obj_swordhitbox) && thrown == 0)
{
    grabbed = 0
    thrown = 1
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    with (obj_camera)
    {
        shake_mag = 3
        shake_mag_acc = (3 / room_speed)
    }
    if scr_solid(x, y)
    {
        x = playerid.x
        y = playerid.y
    }
    grav = 0.5
    other.alarm[8] = 60
    other.alarm[7] = 120
    with (playerid)
    {
        move = (key_right + key_left)
        if (sprite_index == spr_uppercutfinishingblow)
            other.vsp = -25
        else
        {
            other.hsp = (xscale * 15)
            other.vsp = -6
        }
    }
}