if (global.debugmode == 1)
{
    if (global.hudmode == 0)
    {
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
    }
    else if (global.hudmode == 1)
        visible = false
}
else
{
    visible = false
    alpha = 0
}
if (global.style > 55 && global.stylethreshold < 4)
{
    global.stylethreshold = (global.stylethreshold + 1)
    global.style = (global.style - 55)
}
if (global.style < 0 && global.stylethreshold != 0)
{
    global.stylethreshold = (global.stylethreshold - 1)
    global.style = (global.style + 55)
}
if (global.style >= 0 && global.combotime == 0)
    global.style = (global.style - 0.125)
if (global.style < 0 && global.stylethreshold == 0)
    global.style = 0
if (global.stylethreshold == 4 && global.style > 55)
    global.style = 55


