if (obj_player1.spotlight == 1)
{
    player = obj_player1
    player2 = obj_player2
}
else
{
    player = obj_player2
    player2 = obj_player1
}
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
    targetRoom = 188
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


