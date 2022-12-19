with (obj_player)
{
    if (other.image_yscale == 1)
    {
        if (((key_down && (!place_meeting(x, (y + 1), obj_destructibles)) && place_meeting(x, (y + 1), other.id) && (state == 59 || state == 30)) || ((state == 61 || state == 67 || state == 70) && (!place_meeting(x, (y + 1), obj_destructibles)) && place_meeting(x, (y + 1), other.id))) && (!instance_exists(obj_fadeout)) && state != 71 && state != 54)
        {
            other.depth = -10
            scr_sound(sound_enemyslap)
            obj_player.box = 1
            mach2 = 0
            obj_camera.chargecamera = 0
            x = other.x
            obj_player.targetDoor = other.targetDoor
            obj_player.targetRoom = other.targetRoom
            sprite_index = spr_player_downpizzabox
            image_index = 0
            state = 71
            }
        }
    if (other.image_yscale == -1)
    {
        if (((key_up && (!place_meeting(x, (y - 1), obj_destructibles)) && place_meeting(x, (y - 1), other.id) && (state == 51 || state == 56)) && (!place_meeting(x, (y - 1), obj_destructibles)) && place_meeting(x, (y - 1), other.id))) && (!instance_exists(obj_fadeout))
        {
            scr_sound(sound_enemyslap)
            other.depth = -10
            obj_player.box = 1
            other.depth = -8
            mach2 = 0
            obj_camera.chargecamera = 0
            x = other.x
            obj_player.targetDoor = other.targetDoor
            obj_player.targetRoom = other.targetRoom
            sprite_index = spr_player_uppizzabox
            image_index = 0
			state = 71
        }
    }
}
if (place_meeting(x, (y + 1), obj_doorA) || place_meeting(x, (y - 1), obj_doorA))
    targetDoor = "A"
if (place_meeting(x, (y + 1), obj_doorB) || place_meeting(x, (y - 1), obj_doorB))
    targetDoor = "B"
if (place_meeting(x, (y + 1), obj_doorC) || place_meeting(x, (y - 1), obj_doorC))
    targetDoor = "C"
