
    alpha = obj_tv.alpha
    if (room == Realtitlescreen || room == Titlescreen || room == rank_room || room == cowboytask || room == hub_room2 || room == hub_room1)
        alpha = obj_tv.alpha
    if (room == Titlescreen || room == rank_room || room == cowboytask || room == hub_room2 || room == hub_room1)
        visible = false
    if (room == timesuproom || room == boss_room1 || room == Scootertransition || room == characterselect)
        visible = false
    else
        visible = true
    if (!(room == Titlescreen || room == rank_room || room == cowboytask || room == hub_room2 || room == hub_room1))
    {
        if (obj_player.y < 200 && obj_player.x > (room_width - 200))
            alpha = obj_tv.alpha
        else if (!(room == rank_room || room == timesuproom || room == boss_room1 || room == Realtitlescreen || room == Scootertransition || room == Titlescreen || room == rank_room || room == cowboytask || room == hub_room2 || room == hub_room1))
            alpha = obj_tv.alpha
    }

//Gaming
if global.stylethreshold <= 0 {
intensity = 0.0015
_image_index = 0;
_image_speed = 0;
}
else if global.stylethreshold = 1 {
intensity = 0.0020
_image_speed = 0.20;
}
else if global.stylethreshold = 2 {
intensity = 0.0025
_image_speed = 0.25;
}
else if global.stylethreshold = 3 {
intensity = 0.0030
_image_speed = 0.30;
}
else if global.stylethreshold >= 4 {
intensity = 0.0035
_image_speed = 0.35;
}
if floor(_image_index) < 7
_image_index += _image_speed;
else
_image_index = 0

if (global.style > 25 && global.stylethreshold < 4)
{
    global.stylethreshold = (global.stylethreshold + 1)
    global.style -= 25
}
if (global.style < 0 && global.stylethreshold != 0)
{
    global.stylethreshold = (global.stylethreshold - 1)
    global.style += 25
}
if global.style >= 0 //&& global.combotime <= 40
    global.style -= intensity
if (global.style < 0 && global.stylethreshold == 0)
    global.style = 0
if (global.stylethreshold == 4 && global.style > 25)
    global.style = 25


