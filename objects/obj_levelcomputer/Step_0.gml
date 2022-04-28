var player = focused_player()
ini_open("playerData_"+global.savefile+".ini")
global.desertrank = ini_read_string("Ranks", "desert", "none")
global.mansionrank = ini_read_string("Ranks", "mansion", "none")
global.sewerrank = ini_read_string("Ranks", "sewer", "none")
global.factoryrank = ini_read_string("Ranks", "factory", "none")
global.freezerrank = ini_read_string("Ranks", "freezer", "none")
global.golfrank = ini_read_string("Ranks", "golf", "none")
ini_close()
targetDoor = "A"
if (place_meeting(x, y, player) && (global.levelselected == 1 || (place_meeting(x, y, player) && global.level == "none")))
    image_speed = 0.35
else
{
    image_speed = 0
    image_index = 0
}
if (global.level == "none")
{
    global.fakepeppino = 0
    if (distance_to_object(player) < 50)
    {
        with (obj_tv)
        {
            _message = "PLEASE SELECT A LEVEL"
            showtext = 1
            alarm[0] = 2
        }
    }
}
if (global.level == "desert")
{
    global.fakepeppino = 0
    targetRoom = 96
    sprite_index = spr_computerdesert
    if (distance_to_object(player) < 50)
    {
        with (obj_tv)
        {
            _message = "OREGANO MIRAGE"
            showtext = 1
            alarm[0] = 2
        }
    }
}
if (global.level == "desertnight")
{
    global.fakepeppino = 0
    targetRoom = 96
    sprite_index = spr_computerdesertnight
    if (distance_to_object(player) < 50)
    {
        with (obj_tv)
        {
            _message = "MARJORAM DREAM"
            showtext = 1
            alarm[0] = 2
        }
    }
}
if (global.level == "mansion")
{
    global.fakepeppino = 0
    targetRoom = 216
    sprite_index = spr_computermansion
    if (distance_to_object(player) < 50)
    {
        with (obj_tv)
        {
            _message = "PEPPER MANSION"
            showtext = 1
            alarm[0] = 2
        }
    }
}
if (global.level == "factory")
{
    global.fakepeppino = 0
    targetRoom = 200
    sprite_index = spr_computerfactory
    if (distance_to_object(player) < 50)
    {
        with (obj_tv)
        {
            _message = "PIZZASAUCE FACTORY"
            showtext = 1
            alarm[0] = 2
        }
    }
}
if (global.level == "sewer")
{
    global.fakepeppino = 0
    targetRoom = 176
    sprite_index = spr_computersewer
    if (distance_to_object(player) < 50)
    {
        with (obj_tv)
        {
            _message = "TUBULAR TRASH ZONE"
            showtext = 1
            alarm[0] = 2
        }
    }
}
if (global.level == "freezer")
{
    global.fakepeppino = 0
    targetRoom = oldfreezer_1
    sprite_index = spr_computerfreezer
    if (distance_to_object(player) < 50)
    {
        with (obj_tv)
        {
            _message = "THE FREEZER"
            showtext = 1
            alarm[0] = 2
        }
    }
}
if (global.level == "golf")
{
    global.fakepeppino = 1
    targetRoom = 167
    sprite_index = spr_computergolf
    if (distance_to_object(player) < 50)
    {
        with (obj_tv)
        {
            _message = "PIZZAGOLF"
            showtext = 1
            alarm[0] = 2
        }
    }
}
//Draw Text
if place_meeting(x, y, player) && global.levelselected == 1
	drawtext = true
else
	drawtext = false
//Lapping Time Attack baybe
ini_open("playerData_"+global.savefile+".ini")
if selected = true && ini_read_string("Ranks", string(level), "none") != "none" && has_selectedoption = false && string(level) != "snickchallenge"
{
	scr_getinput();
    if (key_right2)
    {
        selection = 1
        scr_soundeffect(sfx_step)
    }
	else if (-key_left2)
	{
        selection = 0
        scr_soundeffect(sfx_step)		
	}
	if key_jump2
	{
		has_selectedoption = true;
		scr_soundeffect(sfx_enemyprojectile)
	}
}
else if selected = true
	can_gotolevel = true
ini_close()
	


