//Spotlight
if storedspotlight != obj_player1.spotlight
{
	player = obj_player1
	if obj_player1.spotlight = false && global.coop = true
		player = obj_player2
    instance_create((x + (sprite_width / 2)), (y + (sprite_height / 2)), obj_cloudeffect)
    repeat (6)
        instance_create(((x + (sprite_width / 2)) + random_range(-32, 32)), ((y + (sprite_height / 2)) + random_range(-32, 32)), obj_cloudeffect)
	storedspotlight = obj_player1.spotlight
}
	
if (player.character == "P")
    image_index = 1
else if (player.character == "N" && player.pogo = false)
    image_index = 1	
else if (player.character == "N" && player.pogo = true)
    image_index = 2
else if (player.character == "S")
    image_index = 3
else if (player.character == "V")
	image_index = 4
else if (player.character == "PZ")
	image_index = 5
else if (player.character == "PM")
{
	image_index = 0
	if DOUGIE
	{
		image_index = 6
	}
	else
	{
		image_index = 0
	}
	
}
else
	image_index = 0
if (place_meeting(x, (y + 1), obj_player) && activated == 0)
{
    instance_create((x + (sprite_width / 2)), (y + (sprite_height / 2)), obj_cloudeffect)
    repeat (6)
        instance_create(((x + (sprite_width / 2)) + random_range(-32, 32)), ((y + (sprite_height / 2)) + random_range(-32, 32)), obj_cloudeffect)
    with (instance_place(x, y + 1, obj_player))
    {
		other.player = id
        if (character == "P" && other.activated == 0)
        {
            y += 50
			pogo = false
            character = "N"
            paletteselect = 0
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
        }
        else if (character == "N" && other.activated == 0 && pogo = false)
        {
            y += 50
			pogo = true
            character = "N"
            paletteselect = 0
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
        }
        else if (character == "N" && other.activated == 0 && pogo = true)
        {
            y += 50
			pogo = false
            character = "S"
            paletteselect = 0
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
        }		
        else if (character == "S" && other.activated == 0)
        {
            y += 50
            character = "V"
            paletteselect = 1
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
        }
        else if (character == "V" && other.activated == 0)
        {
            y += 50
            character = "PZ"
            paletteselect = 1
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
        }
        else if (character == "PZ" && other.activated == 0)
        {
            y += 50
            character = "PM"
            paletteselect = 0
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
        }
        else if character == "PM" && other.activated == 0 && DOUGIE
        {
			if DOUGIE
			{
            y += 50
            character = "D"
            paletteselect = 0
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
			}
		}
		else
		{
		    y += 50
            character = "P"
            paletteselect = 1
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
		}
    }
}/*
if (place_meeting(x, (y + 1), obj_player2) && activated == 0)
{
    instance_create((x + (sprite_width / 2)), (y + (sprite_height / 2)), obj_cloudeffect)
    repeat (6)
        instance_create(((x + (sprite_width / 2)) + random_range(-10, 10)), ((y + (sprite_height / 2)) + random_range(-10, 10)), obj_cloudeffect)
    with (obj_player2)
    {
        if (character == "P" && other.activated == 0)
        {
            y += 50
            character = "N"
            paletteselect = 0
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
        }
        if (character == "N" && other.activated == 0)
        {
            y += 50
            character = "S"
            paletteselect = 0
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
        }
        if (character == "S" && other.activated == 0)
        {
            y += 50
            character = "V"
            paletteselect = 1
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
        }
        if (character == "V" && other.activated == 0 && global.peppermode == 0)
        {
            y += 50
            character = "P"
            paletteselect = 1
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
        }
        if (character == "V" && other.activated == 0 && global.peppermode == 1)
        {
            y += 50
            character = "PM"
            paletteselect = 0
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
        }
        if (character == "PM" && other.activated == 0)
        {
            y += 50
            character = "P"
            paletteselect = 1
            other.activated = 1
            vsp = 1
            other.alarm[0] = 50
            scr_characterspr()
            taunttimer = 20
            tauntstoredmovespeed = 0
            tauntstoredsprite = spr_fall
            tauntstoredstate = 58
            scr_soundeffect(sfx_taunt)
            state = 51
            image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
            sprite_index = spr_taunt
            instance_create(x, y, obj_safeexplosion)
        }
    }
}
