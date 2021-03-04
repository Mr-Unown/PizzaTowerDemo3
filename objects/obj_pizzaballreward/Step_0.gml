if (floor(image_index) == (image_number - 1) && sprite_index == spr_pizzaportaldump)
{
    with (instance_create((x - 16), (y + 16), obj_pizzaslice))
    {
        vsp = choose(-1, 1)
        hsp = choose(2, -2)
    }
    sprite_index = spr_pizzaportalfade
    image_speed = 0
    image_index = 4
}
if (floor(image_index) == 4 && golfscore != 0 && sprite_index == spr_pizzaportalfade)
{
    image_speed = 0
    image_index = 4
}
else if (floor(image_index) == 4 && golfscore == 0 && sprite_index == spr_pizzaportalfade)
    image_speed = 0.35
if (floor(image_index) == (image_number - 1) && sprite_index == spr_pizzaportalfade)
{
    image_speed = 0
    sprite_index = spr_null
    instance_destroy()
}
for (i = 0; i < 2; i += 1)
{
    while (position_meeting((spawnx + 50), (spawny - 50), solids[i]) || position_meeting((spawnx - 50), (spawny - 50), solids[i]))
    {
        spawny += 1
        if (spawnx > initialx)
            spawnx -= 1
        if (spawnx <= initialx)
            spawnx += 1
    }
    while (position_meeting((spawnx + 50), (spawny + 50), solids[i]) || position_meeting((spawnx - 50), (spawny + 50), solids[i]))
    {
        spawny -= 1
        if (spawnx > initialx)
            spawnx -= 1
        if (spawnx <= initialx)
            spawnx += 1
    }
}
if (global.golfhit > 0)
    global.golfhit--
y = spawny
x = spawnx


