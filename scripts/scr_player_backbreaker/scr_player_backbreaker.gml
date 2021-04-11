mach2 = 0
if (sprite_index != spr_player_machfreefall)
{
    hsp = 0
    movespeed = 0
}
else
    hsp = (xscale * movespeed)
landAnim = 0
if (sprite_index == spr_player_machfreefall && place_meeting(x, (y + 1), obj_solid))
{
    state = 71
    sprite_index = spr_player_crouchslide
}
if (sprite_index == spr_playerN_machfreefall1 && place_meeting(x, (y + 1), obj_solid))
{
    state = 92
    sprite_index = spr_playerN_bodyslam
}
if (sprite_index == spr_bossintro && floor(image_index) == (image_number - 1))
{
    state = 0
    image_index = 0
}
if (sprite_index == spr_playerV_dynamitethrow && floor(image_index) == (image_number - 1))
{
    state = 0
    image_index = 0
}
if (sprite_index == spr_taunt)
{
    if (!instance_exists(parry_id))
    {
        parry_id = instance_create(x, y, obj_parryhitbox)
        with (parry_id)
        {
            playerid = other.id
            image_xscale = other.xscale
        }
    }
    if (taunttimer < 10)
    {
        if instance_exists(parry_id)
        {
            instance_destroy(parry_id)
			parry_id = noone
        }
    }
    if (supertauntcharged = true && (!instance_exists(obj_tauntaftereffectspawner)) && character != "V")
    {
		if global.combotime > 0
		global.combotime -= 10
		else
		global.combotime = 0
		global.pausecombotime = false
        with (instance_create(x, y, obj_tauntaftereffectspawner))
            playerid = other.id
        with (obj_baddie)
        {
			var _cam_x = camera_get_view_x(view_camera[0])
			var _cam_y = camera_get_view_y(view_camera[0])
			var _cam_w = camera_get_view_width(view_camera[0])
			var _cam_h = camera_get_view_height(view_camera[0])
            if point_in_rectangle(x, y, (_cam_x) - 32, (_cam_y) - 32, (_cam_x + _cam_w) + 32, (_cam_y + _cam_h) + 32)
			{
				scarebuffer = 0;
				blowdirection = 5;
				blowintensity = 1;
				playerxscale = choose(1,-1)
				scr_sleep();
				state = enemystates.enemyshake;	
			}
        }
        with (obj_camera)
        {
            shake_mag = 10
            shake_mag_acc = (30 / room_speed)
        }
		supertauntcharged = false;
		supertauntbuffer = 0;
    }
    if (global.debugmode == 1)
    {
        if (character == "P")
        {
            if key_down2
            {
                if (paletteselect < 12)
                    paletteselect += 1
                else
                    paletteselect = 1
                taunttimer = 20
            }
        }
        if (character == "N")
        {
            if key_down2
            {
                if (paletteselect < 11)
                    paletteselect += 1
                else
                    paletteselect = 0
                taunttimer = 20
            }
        }
        if (character == "S")
        {
            if key_down2
            {
                if (paletteselect < 11)
                    paletteselect += 1
                else
                    paletteselect = 0
                taunttimer = 20
            }
        }
        if (character == "V")
        {
            if key_down2
            {
                if (paletteselect < 11)
                    paletteselect += 1
                else
                    paletteselect = 0
                taunttimer = 20
            }
        }
		if (character == "PM")
        {
            if key_down2
            {
                if (paletteselect < 5)
                    paletteselect += 1
                else
                    paletteselect = 0
                taunttimer = 20
            }
        }
        if key_up2
        {
            if (character == "P")
            {
                character = "N"
				pogo = false
                paletteselect = 0
                tauntstoredsprite = spr_idle
            }
            else if (character == "N") && pogo = false
            {
                character = "N"
				pogo = true
                paletteselect = 0
                tauntstoredsprite = spr_idle
            }			
            else if (character == "N") && pogo = true
            {
                character = "S"
				pogo = false
                paletteselect = 0
                tauntstoredsprite = spr_idle
            }
            else if (character == "S")
            {
                character = "V"
                paletteselect = 0
                tauntstoredsprite = spr_idle
            }
			else if (character == "V")
            {
                character = "D"
                paletteselect = 0
                tauntstoredsprite = spr_idle
            }
            else if (character == "D")
            {
                if (global.peppermode == 0)
                {
                    character = "P"
                    paletteselect = 1
                }
                else
                {
                    character = "PM"
                    paletteselect = 0
                }
                tauntstoredsprite = spr_idle
            }
            else if (character == "PM")
            {
                character = "P"
                paletteselect = 1
                tauntstoredsprite = spr_idle
            }
            scr_characterspr()
            scr_changetoppings()
            scr_soundeffect(sfx_taunt)
            taunttimer = 20
            state = 51
            image_index = random_range(0, sprite_get_number(spr_taunt))
            sprite_index = spr_taunt
            tauntstoredstate = 0
            with (instance_create(x, y, obj_taunteffect))
            {
                playerid = other.id
                baddie = 0
            }
        }
    }
    taunttimer--
    vsp = 0
}
if (taunttimer == 0 && sprite_index == spr_taunt)
{
    movespeed = tauntstoredmovespeed
    sprite_index = tauntstoredsprite
    state = tauntstoredstate
    if instance_exists(parry_id)
    {
        instance_destroy(parry_id)
        parry_id = -4
    }
}
if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_eatspaghetti)
    state = 0
if (floor(image_index) == (image_number - 1) && sprite_index == spr_Timesup && place_meeting(x, y, obj_exitgate))
    state = 0
if (floor(image_index) == (image_number - 1) && (sprite_index == spr_player_levelcomplete || sprite_index == spr_playerN_victory || sprite_index == spr_snick_victory || sprite_index == spr_playerV_victory))
    state = 0
if (key_jump && sprite_index == spr_player_phoneidle)
{
    global.panic = 1
    sprite_index = spr_bossintro
    image_index = 0
    with (instance_create(x, y, obj_debris))
    {
        image_index = 0
        sprite_index = spr_phonedebris
    }
}
if (global.miniboss == 1 && sprite_index == spr_bossintro && floor(image_index) == (image_number - 1))
    state = 0
image_speed = 0.35
if (character == "N" && sprite_index == spr_playerN_dab)
{
    image_index = (gamepad_button_value(0, gp_shoulderlb) * 20)
    if (gamepad_button_value(0, gp_shoulderlb) == 0)
        state = 0
    if (global.combo >= 3 && (!instance_exists(obj_tauntaftereffectspawner)))
    {
		if global.combotime > 0
		global.combotime -= 20
		else
		global.combotime = 0
		global.pausecombotime = false
        scr_soundeffect(60)
        instance_create(x, y, obj_taunteffect)
        instance_create(x, y, obj_tauntaftereffectspawner)
        with (obj_baddie)
        {
            if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
            {
                dropcoin = 1
                instance_destroy()
            }
        }
        with (obj_camera)
        {
            shake_mag = 10
            shake_mag_acc = (30 / room_speed)
        }
    }
}
if (character == "P" && sprite_index == spr_player_smirk)
{
    if (gamepad_button_value(0, gp_shoulderlb) == 0)
        state = 0
    if (global.combo >= 3 && (!instance_exists(obj_tauntaftereffectspawner)))
    {
		if global.combotime > 0
		global.combotime -= 20
		else
		global.combotime = 0
		global.pausecombotime = false		
        scr_soundeffect(60)
        instance_create(x, y, obj_taunteffect)
        instance_create(x, y, obj_tauntaftereffectspawner)
        with (obj_baddie)
        {
            if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
            {
                dropcoin = 1
                instance_destroy()
            }
        }
        with (obj_camera)
        {
            shake_mag = 10
            shake_mag_acc = (30 / room_speed)
        }
    }
}
if (character == "S" && sprite_index == spr_snick_exe)
{
    if (gamepad_button_value(0, gp_shoulderlb) == 0)
        state = 0
    if (global.combo >= 3 && (!instance_exists(obj_tauntaftereffectspawner)))
    {
		if global.combotime > 0
		global.combotime -= 20
		else
		global.combotime = 0
		global.pausecombotime = false
        scr_soundeffect(60)
        instance_create(x, y, obj_taunteffect)
        instance_create(x, y, obj_tauntaftereffectspawner)
        with (obj_baddie)
        {
            if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
            {
                dropcoin = 1
                instance_destroy()
            }
        }
        with (obj_camera)
        {
            shake_mag = 10
            shake_mag_acc = (30 / room_speed)
        }
    }
}
if (character == "V" && sprite_index == spr_playerV_revolverstart)
{
    image_index = (gamepad_button_value(0, gp_shoulderlb) * 7)
    if (gamepad_button_value(0, gp_shoulderlb) == 0)
        state = 0
    if (global.combo >= 3 && (!instance_exists(obj_tauntaftereffectspawner)))
    {
		if global.combotime > 0
		global.combotime -= 20
		else
		global.combotime = 0
		global.pausecombotime = false		
        scr_soundeffect(60)
        instance_create(x, y, obj_taunteffect)
        instance_create(x, y, obj_tauntaftereffectspawner)
        with (obj_baddie)
        {
            if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
            {
                dropcoin = 1
                instance_destroy()
            }
        }
        with (obj_camera)
        {
            shake_mag = 10
            shake_mag_acc = (30 / room_speed)
        }
    }
}
