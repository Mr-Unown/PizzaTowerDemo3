if ((obj_player1.state == 0 || obj_player1.state == 69 || obj_player1.state == 70 || obj_player1.state == 91 || obj_player1.state == 65) && sprite_index == spr_geromedoor && obj_player1.key_up && global.geromefollowing = 1 && place_meeting(x, y, obj_player1))
{
    ds_list_add(global.saveroom, id)
	global.geromeopen = true;
	
	with obj_gerome {	
	originalroom = room;
	startx = x
	starty = y
	ds_list_delete(global.follower, ds_list_find_index(global.follower, id));
	global.geromefollowing = false;
	x = other.x + 50
	y = other.y + 50
	sprite_index = spr_gerome_door
	}	
    obj_player1.state = 64
    obj_player1.image_index = 0
    if (instance_exists(obj_player2) && global.coop == 1)
    {
        obj_player2.x = obj_player1.x
        obj_player2.y = obj_player1.y
        obj_player2.state = 64
        obj_player2.image_index = 0
    }
    image_index = 0
    sprite_index = spr_geromedoor_opening
    image_speed = 0.35
	global.pausecombotime = true
	global.combotime = 60
	obj_tv.alarm[1] = 75	
    instance_create((x + 50), (y + 50), obj_lock)

}
if instance_exists(obj_player2)
{
    if (obj_player2.state == 0 && obj_player2.key_up && global.geromefollowing == 1 && place_meeting(x, y, obj_player2))
    {
        ds_list_add(global.saveroom, id)
		global.geromeopen = true;

		with obj_gerome {	
		originalroom = room;
		startx = x
		starty = y
		ds_list_delete(global.follower, ds_list_find_index(global.follower, id));
		global.geromefollowing = false;
		}
		
        obj_player2.state = 64
        obj_player2.image_index = 0
        obj_player1.x = obj_player2.x
        obj_player1.y = obj_player2.y
        obj_player1.state = 64
        obj_player1.image_index = 0
        image_index = 0
        sprite_index = spr_geromedoor_opening
        image_speed = 0.35
		global.pausecombotime = true
		global.combotime = 60
		obj_tv.alarm[1] = 75		
        instance_create((x + 50), (y + 50), obj_lock)
    }
}
with (obj_player)
{
    if (place_meeting(x, y, obj_geromedoor) && other.sprite_index = spr_geromedoor_opened && key_up && (state == 0 || state == 69 || state == 70 || state == 91) && y == (other.y + 50) && (!instance_exists(obj_noisesatellite)) && (!instance_exists(obj_fadeout)) && state != 78 && state != 64 && state != 61)
    {
		global.geromeopen = true;		
		with obj_gerome {	
			originalroom = room;
			startx = x
			starty = y
			ds_list_delete(global.follower, ds_list_find_index(global.follower, id));
			global.geromefollowing = false;
		}		
        scr_soundeffect(sfx_door)
        mach2 = 0
        image_index = 0
        obj_camera.chargecamera = 0
        obj_player1.sprite_index = obj_player1.spr_lookdoor
        obj_player1.targetDoor = other.targetDoor
        obj_player1.targetRoom = other.targetRoom
        obj_player1.image_index = 0
        obj_player1.state = 78
        obj_player1.mach2 = 0
        if (instance_exists(obj_player2) && global.coop == 1)
        {
            obj_player2.sprite_index = obj_player2.spr_lookdoor
            obj_player2.targetDoor = other.targetDoor
            obj_player2.targetRoom = other.targetRoom
            obj_player2.image_index = 0
            obj_player2.state = 78
            obj_player2.mach2 = 0
        }
        state = 78
        if (other.acttransition == 1)
        {
            with (instance_create(x, y, obj_fadeout))
                acttransition = 1
        }
        else
            instance_create(x, y, obj_fadeout)
    }
}
if (floor(image_index) == image_number - 1) && sprite_index = spr_geromedoor_opening
    sprite_index = spr_geromedoor_opened
if (floor(obj_player.image_index) == (obj_player.image_number - 1) && obj_player.state == 64)
{
    with (obj_player)
    {
        obj_player1.targetDoor = other.targetDoor
        obj_player1.targetRoom = other.targetRoom
        if (instance_exists(obj_player2) && global.coop == 1)
        {
            obj_player2.targetDoor = other.targetDoor
            obj_player2.targetRoom = other.targetRoom
        }
        if (!instance_exists(obj_fadeout))
        {
            scr_soundeffect(sfx_door)
            if (other.acttransition == 1)
            {
                with (instance_create(x, y, obj_fadeout))
                    acttransition = 1
            }
            else
                instance_create(x, y, obj_fadeout)
        }
    }
}
if place_meeting(x, y, obj_doorA)
    targetDoor = "A"
if place_meeting(x, y, obj_doorB)
    targetDoor = "B"
if place_meeting(x, y, obj_doorC)
    targetDoor = "C"
if place_meeting(x, y, obj_doorD)
    targetDoor = "D"
if place_meeting(x, y, obj_doorE)
    targetDoor = "E"
if place_meeting(x, y, obj_doorF)
    targetDoor = "F"
if place_meeting(x, y, obj_doorG)
    targetDoor = "G"	

