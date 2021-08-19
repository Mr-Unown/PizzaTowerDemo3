if instance_exists(obj_keyconfig)
    visible = false
else
    visible = true
if (levelselect == 1)
{
    if instance_exists(obj_cursor)
        instance_destroy(obj_cursor)
    if (!instance_exists(obj_keyconfig))
        scr_getinput()
    if (key_down2 && b < 6)
        b += 1
    if (key_up2 && b > 0)
        b -= 1
    if (!instance_exists(obj_fadeout))
    {
        if key_jump
        {
            with (obj_levelcomputer)
                image_speed = 0.35
            if (other.b == 0)
            {
                global.level = "desert"
                global.desertnight = 0
            }
            if (other.b == 1)
            {
                global.level = "desertnight"
                global.desertnight = 1
            }
            if (other.b == 2)
                global.level = "mansion"
            if (other.b == 3)
                global.level = "factory"
            if (other.b == 4)
                global.level = "sewer"
            if (other.b == 5)
                global.level = "freezer"
            if (other.b == 6)
                global.level = "golf"
            global.levelselected = 1
            with (obj_player1)
                state = 0
            with (obj_player2)
                state = 0
            scr_soundeffect(sfx_collecttoppin)
        }
    }
    with (obj_levelcomputer)
    {
        if (other.b == 0)
        {
            sprite_index = spr_computerdesert
            image_speed = 0
            image_index = 0
        }
        if (other.b == 1)
        {
            sprite_index = spr_computerdesertnight
            image_speed = 0
            image_index = 0
        }
        if (other.b == 2)
        {
            sprite_index = spr_computermansion
            image_speed = 0
            image_index = 0
        }
        if (other.b == 3)
        {
            sprite_index = spr_computerfactory
            image_speed = 0
            image_index = 0
        }
        if (other.b == 4)
        {
            sprite_index = spr_computersewer
            image_speed = 0
            image_index = 0
        }
        if (other.b == 5)
        {
            sprite_index = spr_computerfreezer
            image_speed = 0
            image_index = 0
        }
        if (other.b == 6)
        {
            sprite_index = spr_computergolf
            image_speed = 0
            image_index = 0
        }
    }
}
else if (levelselect == 0)
{
    if (obj_player.key_up && (!instance_exists(obj_keyconfig)) && optionselect == 1)
    {
        scr_soundeffect(sfx_step)
        optionselect = 0
    }
    else if (obj_player.key_down && (!instance_exists(obj_keyconfig)) && optionselect == 0)
    {
        optionselect = 1
        scr_soundeffect(sfx_step)
    }
    if (optionselect == 0)
        obj_cursor.y = (y - 24)
    else if (optionselect == 1)
        obj_cursor.y = (y + 18)
    if (optionselect == 0 && obj_player.key_jump && (!instance_exists(obj_keyconfig)))
    {
        scr_soundeffect(sfx_collecttoppin)
        levelselect = 1
        sprite_index = spr_null
    }
    if (optionselect == 1 && (!instance_exists(obj_keyconfig)))
    {
        if keyboard_check_pressed(global.key_jump)
        {
            with (obj_player1)
                state = 0
            with (obj_player2)
                state = 0
            scr_soundeffect(sfx_collecttoppin)
            instance_destroy()
            if instance_exists(obj_cursor)
                instance_destroy(obj_cursor)
            with (obj_levelcomputer)
            {
                global.level = "none"
                sprite_index = spr_computerblank
            }
        }
    }
}
if (keyboard_check_pressed(global.key_slap) && levelselect == 1)
{
    levelselect = 0
    if (!instance_exists(obj_cursor))
        instance_create((x - 150), y, obj_cursor)
    sprite_index = spr_menuselection
}


