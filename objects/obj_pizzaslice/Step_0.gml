if place_meeting((x + hsp), y, obj_solid)
    hsp *= -1
if (outside_room == 0)
    out_timer -= 1
if place_meeting(x, y, obj_solid) 
{
    recreate = 1
    maxspeed += 0.05
    x = median((x - maxspeed), xstart, (x + maxspeed))
    y = median((y - maxspeed), ystart, (y + maxspeed))
}
else
{
    out_timer = 0
    outside_room = 0
    maxspeed = 0
}
if (recreate == 1 && (!place_meeting(x, y, obj_solid)) && outside_room == 0)
{
    recreate = 0
    hsp = choose(2, -2)
    vsp = random_range(-2, -4)
}
scr_collide()
if (global.timeattack == 1)
    instance_destroy()


