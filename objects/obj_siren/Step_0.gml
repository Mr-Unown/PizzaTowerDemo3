if (global.panic == 1)
    image_speed = 0.5
if (global.snickchallenge == 1 && global.minutes < 2)
    image_speed = 0.5
if (global.miniboss == 1 && global.minutes == 0 && global.seconds < 33)
    image_speed = 0.5
else if (global.panic != 1)
{
    image_speed = 0
    image_index = 0
}


